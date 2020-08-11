package com.zhusg.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zhusg.dao.SysRoleDao;
import com.zhusg.dataSource.DataSource;
import com.zhusg.dataSource.DataSourceNames;
import com.zhusg.entity.SysRoleEntity;
import com.zhusg.service.SysRoleService;
import org.springframework.stereotype.Service;

/**
 * @Auther :朱树广
 * @Date :2020/8/11
 * @Description :icu.pekka.blogserver.service.impl
 * @Version :1.0
 */
@Service
public class SysRoleServiceImpl extends ServiceImpl<SysRoleDao, SysRoleEntity> implements SysRoleService {
    @Override
    @DataSource(name = DataSourceNames.SECOND)
    public boolean checkName(String name) {
        QueryWrapper<SysRoleEntity> wrapper = new QueryWrapper<SysRoleEntity>().eq("name", name);
        SysRoleEntity sysRoleEntity = this.baseMapper.selectOne(wrapper);
        if (sysRoleEntity != null) {
            return true;
        }
        return false;
    }
}
