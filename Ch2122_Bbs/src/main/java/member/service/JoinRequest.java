package member.service;

import java.util.Map;

//DTO,594
public class JoinRequest {
	private String id;
	private String name;
	private String password;
	private String confirmPassword;
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public boolean isPasswordEqualToConfirm() {
		
		return false;
	}
	//유효성 검증
	public void validate(Map<String, Boolean> errors) {
		
	}
	
	private void checkEmpty(Map<String, Boolean> errors, String value, String fieldName) {
		
	}
}
