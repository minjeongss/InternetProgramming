package com.jeong.model;

import java.util.Date;

public class BoardDTO {
	private int id;
	private String perform_name;
	private String user_name;
	private String title;
	private Date date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPerform_name() {
		return perform_name;
	}
	public void setPerform_name(String perform_name) {
		this.perform_name = perform_name;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	public String toString() {
		return id+" "+perform_name+user_name+" "+title+" "+date;
	}
}
