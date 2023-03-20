package kh.spring.chazazo.member.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberInfoDto {

	private String name;
	private int gender;
	private String birth;
	private String phoneNumber;
	private String license;
	private String email;
	
}
