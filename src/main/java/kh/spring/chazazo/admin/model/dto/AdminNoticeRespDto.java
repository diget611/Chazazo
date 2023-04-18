package kh.spring.chazazo.admin.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Component
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class AdminNoticeRespDto {
	
	private int idx;
	private String title;
	private Date createDate;
	private int readCount;
	private Date updateDate;
	private Date deleteDate;
	
}
