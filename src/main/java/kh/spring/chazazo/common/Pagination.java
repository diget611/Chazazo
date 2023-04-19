package kh.spring.chazazo.common;

import lombok.Data;

@Data
public class Pagination {
	
	private int listSize = 10;	// 한 페이지에 보이는 목록 수
	private int range = 10;		// 페이지 범위
	private int start;			// list 시작 값
	private int end;			// list 끝 값
	private int startPage;		// 페이징 시작 값
	private int endPage;		// 페이징 끝 값
	private int currentPage;
	private int count;
	private int paging;
	
	public void pageInfo(int size, int page, int count) {
		int paging = 0;
		
		this.listSize = size;
		if(count % listSize == 0) {
			paging = count / listSize;
		} else {
			paging = count / listSize + 1; 
		}
		
		this.start = (page - 1) * listSize + 1;
		this.end = (page - 1) * listSize + 10;
		if(page % 10 == 0) {
			this.startPage = ((page / 10 - 1) * listSize) + 1;
		} else {
			this.startPage = ((page / 10) * listSize) + 1;
		}
		if(this.startPage + 9 < paging) {
			this.endPage = startPage + 9;
		} else {
			this.endPage = paging;
		}
		this.currentPage = page;
		this.count = count;
		this.paging = paging;
	}
	
}
