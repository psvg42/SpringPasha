package com.my.app.db;

import java.io.Serializable;
import java.util.Date;


public class News implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String title;
	private String text;
	private Date date;
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getText() {
		return text;
	}
	
	public void setText(String text) {
		this.text = text;
	}
	
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	
	public News(String title, String text, Date date) {
		super();
		this.title = title;
		this.text = text;
		this.date = date;
	}

	public News() {
		
	}

	@Override
	public String toString() {
		return "News [title=" + title + ", text=" + text + ", date=" + date
				+ "]";
	}
	
	
	
	
	
	
	
	
}
