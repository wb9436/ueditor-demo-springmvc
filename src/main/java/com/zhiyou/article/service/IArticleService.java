package com.zhiyou.article.service;

import java.util.List;

import com.zhiyou.article.dto.ArticleDto;

public interface IArticleService {

	List<ArticleDto> getList();

	void doInsert(ArticleDto articleDto);

	ArticleDto doGetArticleDto(int id);

	void doUpdate(ArticleDto articleDto);

	void doDelete(int id);

}
