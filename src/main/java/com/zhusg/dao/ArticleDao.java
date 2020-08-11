package com.zhusg.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhusg.entity.ArticleEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ArticleDao extends BaseMapper<ArticleEntity> {
}
