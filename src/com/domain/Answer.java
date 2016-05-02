package com.domain;

public class Answer {
	private int idAnswer;
	private String idWorker;
	private int idRequest;
	private String answer;

	public Answer() {

	}

	public Answer(String idWorker, int idRequest, String answer) {
		this.idWorker = idWorker;
		this.idRequest = idRequest;
		this.answer = answer;
	}

	public int getIdAnswer() {
		return idAnswer;
	}

	public void setIdAnswer(int idAnswer) {
		this.idAnswer = idAnswer;
	}

	public String getIdWorker() {
		return idWorker;
	}

	public void setIdWorker(String idWorker) {
		this.idWorker = idWorker;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getIdRequest() {
		return idRequest;
	}

	public void setIdRequest(int idRequest) {
		this.idRequest = idRequest;
	}

}
