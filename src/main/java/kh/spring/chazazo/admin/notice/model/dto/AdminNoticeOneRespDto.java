package kh.spring.chazazo.admin.notice.model.dto;

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
public class AdminNoticeOneRespDto {

	private int idx;
	private String title;
	private String content;
	private Date deleteDate;
	
}
