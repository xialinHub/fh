package com.fh.service.system;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fh.dao.buildingproject.BuildingProjectMapper;

@Service
public class BuildingProjectService{

	@Autowired
	private BuildingProjectMapper buildingProjectMapper;
	
	public List<Map<String, Object>> buildingProjectList(String buildingProjectName){
		List<Map<String, Object>> list = 
				buildingProjectMapper.buildingProjectList(buildingProjectName);
		return list;
	}
	
	
}
