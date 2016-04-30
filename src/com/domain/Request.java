package com.domain;

import java.util.ArrayList;

public class Request {
<<<<<<< HEAD
	private int idRequest;
	public int getIdRequest() {
		return idRequest;
	}
	public void setIdRequest(int idRequest) {
		this.idRequest = idRequest;
	}
	private String nomprojet;
	private String description;
	private String tags;
	private String title;
	private int numberItem;
	private int numberWorkerItem;
	private int numberWorkerSubmission;
	private String rewardSubmission;
	private String TotalWorkerRewards;
	private int TimeAllottedAssignment;
	private int HITExpiresIn;
	private int AutoApprove; 
	private String TotalCost;
	private String paye;
	private String nomRequester;
	private String instruction;
	public String getTotalCost() {
		return TotalCost;
	}
	public void setTotalCost(String totalCost) {
		TotalCost = totalCost;
	}
	public String getPaye() {
		return paye;
	}
	public void setPaye(String paye) {
		this.paye = paye;
	}
	
	public String getNomprojet() {
		return nomprojet;
	}
	public void setNomprojet(String nomprojet) {
		this.nomprojet = nomprojet;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String keywords) {
		this.tags = keywords;
	}
=======
	Long idRequest;
	 String title;
	 String Description;
	Categorie categorie;
	public Long getIdRequest() {
		return idRequest;
	}
	public void setIdRequest(Long idRequest) {
		this.idRequest = idRequest;
	}
>>>>>>> master
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
<<<<<<< HEAD
	public int getNumberItem() {
		return numberItem;
	}
	public void setNumberItem(int numberItem) {
		this.numberItem = numberItem;
	}
	public int getNumberWorkerItem() {
		return numberWorkerItem;
	}
	public void setNumberWorkerItem(int numberWorkerItem) {
		this.numberWorkerItem = numberWorkerItem;
	}
	public int getNumberWorkerSubmission() {
		return numberWorkerSubmission;
	}
	public void setNumberWorkerSubmission(int numberWorkerSubmission) {
		this.numberWorkerSubmission = numberWorkerSubmission;
	}
	public String getRewardSubmission() {
		return rewardSubmission;
	}
	public void setRewardSubmission(String rewardSubmission) {
		this.rewardSubmission = rewardSubmission;
	}
	public int getTimeAllottedAssignment() {
		return TimeAllottedAssignment;
	}
	public void setTimeAllottedAssignment(int timeAllottedAssignment) {
		TimeAllottedAssignment = timeAllottedAssignment;
	}
	public int getHITExpiresIn() {
		return HITExpiresIn;
	}
	public void setHITExpiresIn(int hITExpiresIn) {
		HITExpiresIn = hITExpiresIn;
	}
	public int getAutoApprove() {
		return AutoApprove;
	}
	public void setAutoApprove(int autoApprove) {
		AutoApprove = autoApprove;
	}
	
	public String getNomRequester() {
		return nomRequester;
	}
	public void setNomRequester(String nomRequester) {
		this.nomRequester = nomRequester;
=======
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public Categorie getCategorie() {
		return categorie;
	}
	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
>>>>>>> master
	}
	public Request() {
		super();
		// TODO Auto-generated constructor stub
	}
<<<<<<< HEAD
	public String getTotalWorkerRewards() {
		return TotalWorkerRewards;
	}
	public void setTotalWorkerRewards(String totalWorkerRewards2) {
		TotalWorkerRewards = totalWorkerRewards2;
	}
	public String getInstruction() {
		return instruction;
	}
	public void setInstruction(String instruction) {
		this.instruction = instruction;
	}
	

=======
	
>>>>>>> master
	
	
}
