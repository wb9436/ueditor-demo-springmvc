package com.zhiyou.article.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.article.dto.ArticleDto;
import com.zhiyou.article.service.IArticleService;

@Controller
@RequestMapping("/article")
public class ArticleController {

    @Autowired
    private IArticleService articleService;

    @RequestMapping("/list")
    public String getList(Model model) {
        List<ArticleDto> list = articleService.getList();
        model.addAttribute("list", list);
        return "article/list";
    }

    @RequestMapping("/add")
    public String doAdd() {
        return "article/add";
    }

    @RequestMapping("/insert")
    public String doInsert(ArticleDto articleDto) {
        try {
            articleService.doInsert(articleDto);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/article/list";
    }

    @RequestMapping("/edit/{id}")
    public String doEdit(@PathVariable("id") int id, Model model) {
        ArticleDto articleDto = articleService.doGetArticleDto(id);
        model.addAttribute("articleDto", articleDto);
        return "article/edit";
    }

    @RequestMapping("/update")
    public String doUpdate(ArticleDto articleDto) {
        try {
            articleService.doUpdate(articleDto);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/article/list";
    }

    @RequestMapping("/preview/{id}")
    public String doPreview(@PathVariable("id") int id, Model model) {
        ArticleDto articleDto = articleService.doGetArticleDto(id);
        model.addAttribute("articleDto", articleDto);
        return "article/preview";
    }

    @RequestMapping("/delete/{id}")
    public String doDelete(@PathVariable("id") int id, Model model) {
        articleService.doDelete(id);
        return "redirect:/article/list";
    }
}
