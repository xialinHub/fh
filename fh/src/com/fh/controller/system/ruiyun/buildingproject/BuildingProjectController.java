package com.fh.controller.system.ruiyun.buildingproject;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.fh.controller.base.BaseController;
import com.fh.service.system.BuildingProjectService;

@Controller
@RequestMapping( value = "buildingproject" )
public class BuildingProjectController extends BaseController{
	
	@Autowired
	private BuildingProjectService buildingProjectService;

	/** servlet/jsp 页面访问 */
	@RequestMapping ( value = "buildingprojectlist" )
	@ResponseBody
	public ModelAndView buildingProjectList(String buildingProjectName) throws Exception{
		ModelAndView mv = this.getModelAndView();
		//查询楼盘列表
		List<Map<String, Object>> list = 
				buildingProjectService.buildingProjectList(buildingProjectName);
		mv.addObject("list", list);
		mv.setViewName("system/buildingproject/buildingproject_list");
		return mv;
	}
	
	/** 匹配freemaker模板 */
	@RequestMapping ( value = "buildingprojectlist2" )
	@ResponseBody
	public ModelAndView buildingProjectList2(String building_project_name) throws Exception{
			ModelAndView mv = new ModelAndView("buildingProject");    
	       List<Map<String, Object>> list = 
					buildingProjectService.buildingProjectList(building_project_name);
	       mv.addObject("buildingProjectName", building_project_name);
	       mv.addObject("bpList", list);
	       return mv;
	}
}
