package com;

public class OngoingTask {
	Integer id;
	String name;
	String image;
	String taskType;

	public OngoingTask() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OngoingTask(Integer id, String name, String image, String taskType) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.taskType = taskType;
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

	public String getTaskType() {
		return taskType;
	}

	public void setTaskType(String taskType) {
		this.taskType = taskType;
	}


}
