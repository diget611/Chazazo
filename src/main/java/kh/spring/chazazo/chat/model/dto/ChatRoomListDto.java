package kh.spring.chazazo.chat.model.dto;

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
public class ChatRoomListDto {
	
	private String idx;
	private Integer cnt;
	private String sender;
	private String chatCon;
	
}
