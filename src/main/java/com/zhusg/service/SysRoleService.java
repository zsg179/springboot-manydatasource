package com.zhusg.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zhusg.entity.SysRoleEntity;

/**
 * @Auther :朱树广
 * @Date :2020/8/11
 * @Description :icu.pekka.blogserver.service
 * @Version :1.0
 */
public interface SysRoleService extends IService<SysRoleEntity> {
    boolean checkName(String name);
}
