package kh.spring.chazazo.crawling;



import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class CarCrawling {
	
	   
		public static final String WEB_DRIVER_ID ="webdriver.chrome.driver";
		public static final String WEB_DRIVER_PATH = "C:\\tools\\chromedriver\\chromedriver.exe";
		
	  
	
		public static void main(String[] args) {
		   
			try {
				System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			ChromeOptions options = new ChromeOptions();
			
			WebDriver driver = new ChromeDriver(options);
			String url = "https://auto.daum.net/newcar/brand/bde0000600fm";
			
			driver.get(url);
			try {Thread.sleep(1000);} catch (InterruptedException e) {}
			
			List<WebElement> el1 = driver.findElements(By.className("section_lineup"));
			
			try {Thread.sleep(1000);} catch (InterruptedException e) {}
			
			WebElement el2 = driver.findElement(By.className("list_lineup"));
			List<WebElement> el3 = el2.findElements(By.tagName("li"));
			
			WebElement el4 = driver.findElement(By.className("wrap_thumb"));
			String el5 = el4.findElement(By.tagName("img")).getAttribute("src");
			
			int count = 0;
			for (int i = 0; i < el3.size(); i++) {
				System.out.println(++count + "번 차: "+ el3.get(i).getText());
				System.out.println(++count + "번 차 썸네일: "+ el5);
			}
			
			
			
			
			
			
			try {
				//드라이버가 null이 아니라면
				if(driver != null) {
					//드라이버 연결 종료
					driver.close(); //드라이버 연결 해제
					
					//프로세스 종료
					driver.quit();
				}
			} catch (Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		}


	
	

