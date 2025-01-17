package com.dao;

import com.entity.ShixirizhiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.ShixirizhiView;

/**
 * 实习日志 Dao 接口
 *
 * @author 
 */
public interface ShixirizhiDao extends BaseMapper<ShixirizhiEntity> {

   List<ShixirizhiView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
