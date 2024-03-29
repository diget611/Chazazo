package kh.spring.chazazo.review.model.dto;

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
public class ReviewMainRespDto {
	
	private String username;
	private String content;
	private int score;
	
}
