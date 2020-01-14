package com;

public class Pipeline {
	Integer id;
	String stage_name;
	public Pipeline() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pipeline(Integer id, String stage_name) {
		super();
		this.id = id;
		this.stage_name = stage_name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStage_name() {
		return stage_name;
	}
	public void setStage_name(String stage_name) {
		this.stage_name = stage_name;
	}

}
