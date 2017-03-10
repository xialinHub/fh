package com.fh.controller.system.test;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.service.system.test.TestService;

@Controller
@RequestMapping(value  = "/test")
public class TestController extends BaseController{

	@Resource
	private TestService testService;
	
	@RequestMapping( value = "test_home" )
	public ModelAndView testHome(){
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/test/testHome");
		return mv;
	}
	
}
