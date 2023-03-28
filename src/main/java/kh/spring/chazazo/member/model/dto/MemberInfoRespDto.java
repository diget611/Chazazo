package kh.spring.chazazo.member.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberInfoRespDto {
	// 회원의 모든 정보를 담을 수 있는 DTO
	
	private int idx;
	private String name;
	private int gender;
	private String birth;
	private String phoneNumber;
	private String license;
	private String email;
	
	
}
