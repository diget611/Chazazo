package kh.spring.chazazo.notice.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;


import lombok.Data;

@Component
@Data
public class NoticeDto {

	private int idx;
	private String title;
	private String content;
	private Date createDate;
	private Date updateDate;
	private Date deleteDate;
	private String searchWord;
	

}
