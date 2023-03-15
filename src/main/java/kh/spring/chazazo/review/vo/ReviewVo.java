package kh.spring.chazazo.review.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ReviewVo {

		
		private int idx;
		private int vehicleIdx;
		private String content;
		private Date reviewdate;
		private int reviewlike;
		
	
}
