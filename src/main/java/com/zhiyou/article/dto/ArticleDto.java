package com.zhiyou.article.dto;

import java.io.Serializable;

public class ArticleDto implements Serializable {
	private static final long serialVersionUID = 5491964891567390318L;

	private int id;
	private String title;
	private String desc;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}


}
