package kh.spring.chazazo.admin.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class AdminMemberRespDto {

	private String username;
	private int enabled;
	private String name;
	private int gender;
	private String birth;
	private String phoneNumber;
	private String license;
	private String email;
	
}
