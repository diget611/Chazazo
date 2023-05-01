package kh.spring.chazazo.chat.model.dto;

import java.sql.Date;
import java.util.UUID;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class ChatRoomDto {
	
	private String idx;
	private Date startDate;
	private Date endDate;
	private int memberIdx;
	
	public ChatRoomDto() {
        this.idx = UUID.randomUUID().toString();
	}
}
