package pojos;

import java.util.ArrayList;

public class TaskItemList {

	private String title;
	private String time;
	ArrayList<String> imageList=new ArrayList<String>();
	
	public TaskItemList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public ArrayList<String> getImagelist() {
		return imageList;
	}
	public void setImagelist(ArrayList<String> imagelist) {
		this.imageList = imagelist;
	}
}
