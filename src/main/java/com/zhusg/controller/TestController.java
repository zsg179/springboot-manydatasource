package com.zhusg.controller;

import com.zhusg.entity.ArticleEntity;
import com.zhusg.service.ArticleService;
import com.zhusg.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Auther :朱树广
 * @Date :2020/8/10
 * @Description :icu.pekka.blogserver.controller
 * @Version :1.0
 */
@Controller
public class TestController {

    @Autowired
    private ArticleService articleService;
    @Autowired
    private SysRoleService sysRoleService;

    @GetMapping("/aaa")
    @ResponseBody
    public void test() {
        List<ArticleEntity> cBlogs = articleService.getCBlogs();
        System.out.println(cBlogs);
        boolean test = sysRoleService.checkName("test");
        System.out.println(test);
    }

}
