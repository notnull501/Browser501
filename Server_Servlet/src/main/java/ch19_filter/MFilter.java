package ch19_filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
//Filter Annotation
//Filter:: 클라이언트와 서버 사이에 필터가 존재해서 들어오는 request와 response를 필터가 먼저 받아 사전작업/사후 작업 등 
//          공통적으로 수행되는 부분의 작업을 수행.


//@WebFilter(urlPatterns = {"/*"})
public class MFilter implements Filter {
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("MyFilter 초기화");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("MyFilter 요청 필터 코드 작업");
		request.setCharacterEncoding("utf-8");
		System.out.println("MyFilter 응답 필터 코드 작업");

	}

	@Override
	public void destroy() {
		System.out.println("MyFilter 제거");
	}
}
