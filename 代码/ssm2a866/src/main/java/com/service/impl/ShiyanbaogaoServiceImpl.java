package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ShiyanbaogaoDao;
import com.entity.ShiyanbaogaoEntity;
import com.service.ShiyanbaogaoService;
import com.entity.vo.ShiyanbaogaoVO;
import com.entity.view.ShiyanbaogaoView;

@Service("shiyanbaogaoService")
public class ShiyanbaogaoServiceImpl extends ServiceImpl<ShiyanbaogaoDao, ShiyanbaogaoEntity> implements ShiyanbaogaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShiyanbaogaoEntity> page = this.selectPage(
                new Query<ShiyanbaogaoEntity>(params).getPage(),
                new EntityWrapper<ShiyanbaogaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShiyanbaogaoEntity> wrapper) {
		  Page<ShiyanbaogaoView> page =new Query<ShiyanbaogaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShiyanbaogaoVO> selectListVO(Wrapper<ShiyanbaogaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShiyanbaogaoVO selectVO(Wrapper<ShiyanbaogaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShiyanbaogaoView> selectListView(Wrapper<ShiyanbaogaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShiyanbaogaoView selectView(Wrapper<ShiyanbaogaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
