package test_integrated;	//임시로 test라는 패키지에 위치
//reg_date를 위한 java.sql.Date를 import
import java.sql.Date;

public class Member {
// 디폴트 생성자 (생략)

//	멤버 변수는 private	
	private String id;
	private String password;
	private String name;
	private String address;
	private String tel;
	private Date reg_date;
	
//	각각의 getter, setter method
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	

}
