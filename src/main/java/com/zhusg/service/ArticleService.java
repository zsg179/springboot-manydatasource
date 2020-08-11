package com.zhusg.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zhusg.entity.ArticleEntity;
import java.util.List;

public interface ArticleService extends IService<ArticleEntity> {
    /**
     * 轮播图
     * @return
     */
    List<ArticleEntity> getCBlogs();

}
