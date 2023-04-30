package kh.spring.chazazo.chat.model.dto;

import org.springframework.stereotype.Component;

import lombok.Setter;
import lombok.Getter;

@Component
@Getter
@Setter
public class ChatDto {
	
	private int roomIdx;
	private String chatCon;
	private String sender;
	
}
