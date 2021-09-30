package com.gym.geonganghae.dto;

public class MemberDto {

	private String id;
	private String password;
	private String name;
	private String tel_number;
	private String email;
	private String admin;

	public MemberDto() {
		// TODO Auto-generated constructor stub
	}

	public MemberDto(String id, String password, String name, String tel_number, String email, String admin) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.tel_number = tel_number;
		this.email = email;
		this.admin = admin;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel_number() {
		return tel_number;
	}

	public void setTel_number(String tel_number) {
		this.tel_number = tel_number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

}
