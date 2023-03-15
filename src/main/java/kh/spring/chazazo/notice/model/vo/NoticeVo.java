package kh.spring.chazazo.notice.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class NoticeVo {
	/*
	CREATE TABLE NOTICE (
		       IDX NUMBER CONSTRAINT NOTICE_IDX_PK PRIMARY KEY NOT NULL 
		     , TITLE VARCHAR2(100) NOT NULL 
		     , CONTENT CLOB NOT NULL 
		     , CREATE_DATE DATE DEFAULT SYSTIMESTAMP NOT NULL
		     , READ_COUNT NUMBER DEFAULT 0 NOT NULL
		     , UPDATE_DATE DATE NOT NULL 
		     , DELETE_DATE DATE NOT NULL
		);
		*/
	
	private int idx;
	private String Title;
	private String Content;
	private Date CreateDate;
	private int ReadCount;
	private Date UpdateDate;
	private Date DeleteDate;
	
	
}
