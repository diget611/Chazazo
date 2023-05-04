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
public class ChatLogDto {
	
	private String chatCon;
	private String chatTime;
	private String chatDate;
	private String sender;
	private int status;

}
