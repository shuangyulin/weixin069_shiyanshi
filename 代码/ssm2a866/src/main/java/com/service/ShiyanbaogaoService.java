package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShiyanbaogaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShiyanbaogaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShiyanbaogaoView;


/**
 * 实验报告
 *
 * @author 
 * @email 
 * @date 2021-05-11 12:02:42
 */
public interface ShiyanbaogaoService extends IService<ShiyanbaogaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShiyanbaogaoVO> selectListVO(Wrapper<ShiyanbaogaoEntity> wrapper);
   	
   	ShiyanbaogaoVO selectVO(@Param("ew") Wrapper<ShiyanbaogaoEntity> wrapper);
   	
   	List<ShiyanbaogaoView> selectListView(Wrapper<ShiyanbaogaoEntity> wrapper);
   	
   	ShiyanbaogaoView selectView(@Param("ew") Wrapper<ShiyanbaogaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShiyanbaogaoEntity> wrapper);
   	
}

