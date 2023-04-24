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
public class InquiryRespDto {
	
	private int idx;
	private int categoryIdx;
	private String title;
	private String content;
	
}
