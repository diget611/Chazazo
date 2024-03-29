package kh.spring.chazazo.admin.mainpage.model.dto;

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
public class AdminFuelTypeListRespDto {

	private int idx;
	private String type;
	
}
