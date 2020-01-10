package com;

public class UpcomingTask {
	Integer id;
	String name;
	String image;
	public UpcomingTask() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UpcomingTask(Integer id, String name, String image) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

}
