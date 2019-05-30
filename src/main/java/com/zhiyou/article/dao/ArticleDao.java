package com.zhiyou.article.dao;

import com.zhiyou.article.dto.ArticleDto;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArticleDao {

	List<ArticleDto> getList();

	int insertArticleDto(ArticleDto articleDto);

	ArticleDto getArticleDto(@Param("id") int id);

	int updateArticleDto(ArticleDto articleDto);

	void deleteArticleDto(@Param("id") int id);

}
