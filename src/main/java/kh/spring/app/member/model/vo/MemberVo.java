package kh.spring.app.member.model.vo;

import org.springframework.stereotype.Component;

@Component
public class MemberVo {
	private int idx;
	private String id;
	private String password;
	private String name;
	private String email;
	
	@Override
	public String toString() {
		return "MemberVO [idx=" + idx + ", id=" + id + ", password=" + password + ", name=" + name + ", email=" + email
				+ "]";
	}
	
	public int getIdx() {
		return idx;
	}
	
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
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
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
}
