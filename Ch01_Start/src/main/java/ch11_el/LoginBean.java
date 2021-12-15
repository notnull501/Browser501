package ch11_el;

import java.io.Serializable;
//Serializable: 원격지 컴에 객체 전송시 사용

//VO=DTO=Bean=getter()/setter()
public class LoginBean implements Serializable {
	private static final long serialVersionUID = 155L;
	
	private String userid;
	private String passwd;

	public LoginBean() {
		super();
	}

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

}
