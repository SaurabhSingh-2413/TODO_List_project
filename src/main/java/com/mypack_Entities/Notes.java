package com.mypack_Entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Entity;

@Entity
public class Notes {
	@javax.persistence.Id
	private int Id;
	private String Title;
	private String Content;
	private Date CurrentDate;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public Date getCurrentDate() {
		return CurrentDate;
	}

	public void setCurrentDate(Date currentDate) {
		CurrentDate = currentDate;
	}

	public Notes(String title, String content, Date currentDate) {
		super();
		Id = new Random().nextInt(100000);
		Title = title;
		Content = content;
		CurrentDate = currentDate;
	}

	public Notes() {
		super();
		// TODO Auto-generated constructor stub
	}

}
