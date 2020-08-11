package com.zhusg.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zhusg.dao.ArticleDao;
import com.zhusg.entity.ArticleEntity;
import com.zhusg.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleDao, ArticleEntity> implements ArticleService {
    @Autowired
    ArticleDao articleDao;
    @Override
    public List<ArticleEntity> getCBlogs() {
        return articleDao.selectList(new QueryWrapper<ArticleEntity>()
                .eq("status", 1)
                .eq("is_carousel", 1)
                .orderByDesc("views")
                .last("limit 5"));
    }

}
