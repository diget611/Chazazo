package kh.spring.chazazo.review.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ReviewDto {
	
	private int idx;
	private int memberIdx;
	private String name;
	private String content;
	private Date createdate;
	private int recommend;
	private int score;
	private int vehicleIdx;
	private String reason;
	
}
