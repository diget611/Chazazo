package kh.spring.chazazo.member.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberReqDto {
	
	private String username;
	private String password;
	private String name;
	private int gender;
	private String birth;
	private String phoneNumber;
	private String license;
	private String email;
	
	public void setPassword(String password) {
		this.password = password;
	}

}
