package kh.spring.chazazo.mainpage.service;

import java.util.List;

public interface MainPageService {

	public int reviewCount();	
	public int reservCount();
	public int vehicleCount();
	public int locationCount();
	public List<String> reviewList();
}
