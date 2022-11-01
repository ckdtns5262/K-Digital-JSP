package com.domain;

public class MemberDTO {

	private String id;
	private int pass;
	private String name;
	public MemberDTO(String id, int pass, String name) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
	}
	public MemberDTO() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPass() {
		return pass;
	}
	public void setPass(int pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pass=" + pass + ", name=" + name + "]";
	}



}
