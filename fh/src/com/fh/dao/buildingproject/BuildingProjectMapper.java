package com.fh.dao.buildingproject;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.fh.entity.Page;
import com.fh.entity.buildingproject.BuildingProject;
import com.fh.util.PageData;

public interface BuildingProjectMapper extends Serializable{
    int deleteByPrimaryKey(Integer buildingProjectId);

    int insert(BuildingProject record);

    int insertSelective(BuildingProject record);

    BuildingProject selectByPrimaryKey(Integer buildingProjectId);

    int updateByPrimaryKeySelective(BuildingProject record);

    int updateByPrimaryKeyWithBLOBs(BuildingProject record);

    int updateByPrimaryKey(BuildingProject record);
    
    List<Map<String, Object>> buildingProjectList(@Param("buildingProjectName")String buildingProjectName);
    
    Map<String, Object> buildingProjectInfo(@Param("buildingProjectId")Integer buildingProjectId);
}