package yuhan.mvc.cook.dto;

import java.sql.Timestamp;

public class CookDto {

	private int no;
	private String name;
	private String writer;
	private int love;
	Timestamp c_date;
	private int no2;
	private String description;
	
	
	public CookDto(int no, String name, String writer, int love, Timestamp c_date) {
		this.no = no;
		this.name = name;
		this.writer = writer;
		this.love = love;
		this.c_date = c_date;
		
	}
	

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getLove() {
		return love;
	}
	public void setLove(int love) {
		this.love = love;
	}
	public Timestamp getC_date() {
		return c_date;
	}
	public void setC_date(Timestamp c_date) {
		this.c_date = c_date;
	}
	public int getno2() {
		return no2;
	}
	public void setno2(int no2) {
		this.no2 = no2;
	}
	public String getdescription() {
		return description;
	}
	public void setdescription(String description) {
		this.description = description;
	}
	
	
}
