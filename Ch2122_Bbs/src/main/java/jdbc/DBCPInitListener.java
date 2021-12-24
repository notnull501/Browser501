package jdbc;

import java.io.IOException;
import java.io.StringReader;
import java.sql.DriverManager;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

public class DBCPInitListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		String poolConfig = sce.getServletContext().getInitParameter("poolConfig");
		Properties prop = new Properties();
		try {
			prop.load(new StringReader(poolConfig));
		} catch (IOException e) {
			throw new RuntimeException("config load fail", e);
		}
		loadJDBCDriver(prop);
		initConnectionPool(prop);
	}

	private void loadJDBCDriver(Properties prop) {
		String driverClass = prop.getProperty("jdbcDriver");
		try {
			Class.forName(driverClass);
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("fail to load JDBC Driver", e);
		}
	}

	private void initConnectionPool(Properties prop) {
		try {
			String jdbcUrl = prop.getProperty("jdbcUrl");
			String userName = prop.getProperty("dbUser");
			String userPassword = prop.getProperty("dbPass");

			ConnectionFactory connFactory = new DriverManagerConnectionFactory(jdbcUrl, userName, userPassword);

			PoolableConnectionFactory poolableConnFactory = new PoolableConnectionFactory(connFactory, null);

			String validationQuery = prop.getProperty("validationQuery");
			if (validationQuery != null && !validationQuery.isEmpty()) {
				poolableConnFactory.setValidationQuery(validationQuery);// ※ setValidationQuery 가 검사할 때 사용할 쿼리를 지정하는
																		// 메소드이다.
																		// 여기서 'select 1' 크게 의미 없는 쿼리인데 다만 커넥션이 끊킨 유효하지
																		// 않은
																		// 커넥션을 잡아주기 위한 것이다. 쿼리를 보냈을 때 오류가는 커넥션이 유효하지 않은
																		// 커넥션이기 때문에 가장 DB 부하가 적은 쿼리를 보내느 것이다.
			}
			GenericObjectPoolConfig<PoolableConnection> poolConfig = new GenericObjectPoolConfig<>();
			poolConfig.setTimeBetweenEvictionRunsMillis(1000l * 60l * 5l);// 이 값을 설정해서 주기적으로 유휴 커넥션을 풀어서 제거하는 것이 좋다.
			poolConfig.setTestWhileIdle(true);// 유효 커넥션을 검사할 때 유효하지 않은 커넥션도 검사해서 연결이 끊긴 커넥션을 사전에 제거하는 것이 좋다.
			int minIdle = getIntProperty(prop, "minIdle", 5);
			poolConfig.setMinIdle(minIdle);// 사용되지 않는 커넥션의 최소 개수를 0으로 지정하면 풀에 저장된 커넥션 개수가 0이 될 수 있다.
			int maxTotal = getIntProperty(prop, "maxTotal", 50);
			poolConfig.setMaxTotal(maxTotal);// 이 값이 불필요하게 커질 경우 커넥션 개수가 비대하게 늘어나 DBMS가 수용할 수 있는 수준을 넘어서면 오히려 전체 성능에 좋지
												// 않은
												// 영향을 끼칠 수 있다.

			GenericObjectPool<PoolableConnection> connectionPool = new GenericObjectPool<>(poolableConnFactory,
					poolConfig);
			poolableConnFactory.setPool(connectionPool);

			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver = (PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
			String poolName = prop.getProperty("poolName");
			driver.registerPool(poolName, connectionPool);
		} catch (Exception e) {

		}
	}

	private int getIntProperty(Properties prop, String propName, int defaultValue) {
		String value = prop.getProperty(propName);
		if (value == null) {
			return defaultValue;
		}
		return Integer.parseInt(value);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
	}
}
