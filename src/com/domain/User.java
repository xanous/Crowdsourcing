package com.domain;

import java.util.Date;

public class User {
	private String login;
	private String password;
	private String firstName;
	private String lastName;
	
	public User(String login, String password, String firstName, String lastName) {
		this.login = login;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
	}
	
}
