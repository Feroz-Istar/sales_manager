package com;

public class CustomerObjection {
	Integer id;
	String title;
	Integer count;
	public CustomerObjection() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CustomerObjection(Integer id, String title, Integer count) {
		super();
		this.id = id;
		this.title = title;
		this.count = count;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}

}
