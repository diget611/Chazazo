package kh.spring.chazazo.admin.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Component
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class AdminMemberRespDto {

	private String username;
	private int enabled;
	private String name;
	private int gender;
	private String birth;
	private String phoneNumber;
	private String license;
	private String email;
	private String auth;
	private Date regiDate;
	private Date outDate;
	
}
