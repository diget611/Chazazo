package kh.spring.chazazo.admin.location.model.dto;

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
public class AdminLocationInsertReqDto {

	private String name;
	private double latitude;
	private double longitude;
	private String phoneNumber;
	private String businessHours;
	private String address;
	
}
