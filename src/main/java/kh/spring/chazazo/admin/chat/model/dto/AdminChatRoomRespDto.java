package kh.spring.chazazo.admin.chat.model.dto;

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
public class AdminChatRoomRespDto {
	
	private String idx;
	private String startDate;
	private String endDate;
	private String username;
	
}
