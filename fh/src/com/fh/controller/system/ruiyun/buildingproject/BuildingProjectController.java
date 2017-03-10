package com.fh.controller.system.ruiyun.buildingproject;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.service.system.BuildingProjectService;

@Controller
@RequestMapping( value = "buildingproject" )
public class BuildingProjectController extends BaseController{
	
	@Autowired
	private BuildingProjectService buildingProjectService;

	@RequestMapping ( value = "buildingprojectlist" )
	@ResponseBody
	public ModelAndView buildingProjectList(String buildingProjectName){
		//查询楼盘列表
		List<Map<String, Object>> list = 
				buildingProjectService.buildingProjectList(buildingProjectName);
		ModelAndView mv = this.getModelAndView();
		Page page = new Page();
		page.setTotalResult(212);
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("system/buildingproject/buildingproject_list");
		return mv;
	}
	
}
