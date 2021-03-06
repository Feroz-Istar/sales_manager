package pojos;

import java.util.ArrayList;


public class Pipeline {
	private Integer id;
	private String name;
	private ArrayList<PipelineStage> stages;
	private ArrayList<Integer> teamIds;
	private ArrayList<Integer> productIds;
	private ArrayList<Integer> personaIds;
	private ArrayList<Integer> leadSourceIds;
	private ArrayList<PipelineStage> stageDropdown;

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

	public ArrayList<PipelineStage> getStages() {
		return stages;
	}

	public void setStages(ArrayList<PipelineStage> stages) {
		this.stages = stages;
	}


	public ArrayList<Integer> getTeamIds() {
		return teamIds;
	}

	public void setTeamIds(ArrayList<Integer> teamIds) {
		this.teamIds = teamIds;
	}

	public ArrayList<Integer> getProductIds() {
		return productIds;
	}

	public void setProductIds(ArrayList<Integer> productIds) {
		this.productIds = productIds;
	}

	public ArrayList<Integer> getPersonaIds() {
		return personaIds;
	}

	public void setPersonaIds(ArrayList<Integer> personaIds) {
		this.personaIds = personaIds;
	}

	public ArrayList<PipelineStage> getStageDropdown() {
		return stageDropdown;
	}

	public void setStageDropdown(ArrayList<PipelineStage> stageDropdown) {
		this.stageDropdown = stageDropdown;
	}

	public ArrayList<Integer> getLeadSourceIds() {
		return leadSourceIds;
	}

	public void setLeadSourceIds(ArrayList<Integer> leadSourceIds) {
		this.leadSourceIds = leadSourceIds;
	}



}
