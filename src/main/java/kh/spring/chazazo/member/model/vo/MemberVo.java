package kh.spring.chazazo.member.model.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberVo {
	
	private int idx;
	private String username;
	private String password;
	private int enabled;
	private String auth;
	
}
