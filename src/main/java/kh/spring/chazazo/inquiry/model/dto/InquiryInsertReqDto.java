package kh.spring.chazazo.inquiry.model.dto;

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
public class InquiryInsertReqDto {
	
	private int category;
	private String title;
	private String content;
	
}
