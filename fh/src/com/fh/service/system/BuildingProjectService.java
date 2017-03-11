package com.fh.service.system;

import java.util.List;
import java.util.Map;








import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.dao.buildingproject.BuildingProjectMapper;
import com.fh.entity.Page;
import com.fh.util.PageData;

@Service
public class BuildingProjectService{

	@Autowired
	private BuildingProjectMapper buildingProjectMapper;
	
	@Autowired
	private DaoSupport dao;
	
	public List<Map<String, Object>> buildingProjectList(String building_project_name) throws Exception{
		List<Map<String, Object>> list = 
				buildingProjectMapper.buildingProjectList(building_project_name);
		return list;
	}
	
	
}
