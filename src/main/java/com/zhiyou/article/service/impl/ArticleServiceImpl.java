package com.zhiyou.article.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.article.dao.ArticleDao;
import com.zhiyou.article.dto.ArticleDto;
import com.zhiyou.article.service.IArticleService;

@Service("articleService")
public class ArticleServiceImpl implements IArticleService {

	@Autowired
	private ArticleDao articleDao;

	@Override
	public List<ArticleDto> getList() {
		return articleDao.getList();
	}

	@Override
	public void doInsert(ArticleDto articleDto) {
		articleDao.insertArticleDto(articleDto);
	}

	@Override
	public ArticleDto doGetArticleDto(int id) {
		return articleDao.getArticleDto(id);
	}

	@Override
	public void doUpdate(ArticleDto articleDto) {
		articleDao.updateArticleDto(articleDto);
	}

	@Override
	public void doDelete(int id) {
		articleDao.deleteArticleDto(id);
	}




}
