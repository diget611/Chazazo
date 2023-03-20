package kh.spring.chazazo.member.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberDto {
	
	private String username;
	private String password;
	private int enabled;
	private String auth;
	
	public void setPassword(String password) {
		this.password = password;
	}
	
}
