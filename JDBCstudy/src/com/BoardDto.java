package com;

public class BoardDto {

	private String title;
	private String content;
	private int id;
	private String postdate;
	private int visitcount;
	
	public BoardDto(String title, String content, int id, String postdate, int visitcount) {
		super();
		this.title = title;
		this.content = content;
		this.id = id;
		this.postdate = postdate;
		this.visitcount = visitcount;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	public int getVisitcount() {
		return visitcount;
	}
	public void setVisitcount(int visitcount) {
		this.visitcount = visitcount;
	}
	@Override
	public String toString() {
		return "BoardDto [title=" + title + ", content=" + content + ", id=" + id + ", postdate=" + postdate
				+ ", visitcount=" + visitcount + "]";
	}
	
	
}
