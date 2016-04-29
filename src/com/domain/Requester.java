package com.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Requester extends User {
	
	private List<Request> listrequest=new ArrayList();
	public Requester() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Requester(String login, String password, String firstName, String lastName) {
		super(login, password, firstName, lastName);
		// TODO Auto-generated constructor stub
	}

}
