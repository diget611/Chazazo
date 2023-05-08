package kh.spring.chazazo.admin.model.dto;

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
public class AdminLocationUpdateReqDto {
	
	private int idx;
	private String name;
	private String phoneNumber;
	private double latitude;
	private double longitude;
	private String address;
	
}