package kh.spring.chazazo.member.model.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberVo {
	
	private int idx;
	private String id;
	private String password;
	private String name;
	private String email;
	
}
