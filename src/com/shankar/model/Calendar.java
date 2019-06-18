package com.shankar.model;

public class Calendar {
	private int sno;
	private String title;
	private String eventStartDate;
	private String eventEndDate;

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String event() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEventStartDate() {
		return eventStartDate;
	}

	public void setEventStartDate(String string) {
		this.eventStartDate = string;
	}

	public String getEventEndDate() {
		return eventEndDate;
	}

	public void setEventEndDate(String eventEndDate) {
		this.eventEndDate = eventEndDate;
	}

	public String getTitle() {
		return title;
	}
}
