package com.timesheet;

public class Timesheet {

	private int id;
	private String email;
	private String name;
	private String mid;
	private int wTime;
	private String wDes;
	
	public Timesheet(int id, String email, String name, String mid, int wTime, String wDes) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.mid = mid;
		this.wTime = wTime;
		this.wDes = wDes;
	}

	public int getId() {
		return id;
	}

	public String getEmail() {
		return email;
	}

	public String getName() {
		return name;
	}

	public String getMid() {
		return mid;
	}

	public int getwTime() {
		return wTime;
	}

	public String getwDes() {
		return wDes;
	}
	
	
}
