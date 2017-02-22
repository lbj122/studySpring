package com.study.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.study.service.SampleService;

@Controller
public class SampleController {
	Logger log = Logger.getLogger(this.getClass());

    @Resource(name="sampleService")
    private SampleService sampleService;
    
    @RequestMapping(value="/index.do")
    public ModelAndView Index(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("index");
        log.debug("log ::: Main page");
        return mv;
    }
    
    @RequestMapping(value="/goods.do")
    public ModelAndView test(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("goods");
        List<Map<String, Object>> artistList = sampleService.artistList();
        mv.addObject("artistList", artistList);
        return mv;
    }
    
    @RequestMapping(value="/goodsList.do", produces="application/json")
    @ResponseBody
    public JSONObject goodsList(HttpServletRequest request, HttpServletResponse response) throws Exception{
    	JSONObject jObj = new JSONObject();
    	String no = request.getParameter("no");
    	try{
    		List<Map<String, Object>> goodsList = sampleService.goodsList(no);
    		jObj.put("goodsList", goodsList);
    	}catch(Exception e){
    		log.debug(e);
    	}
        return jObj;
    }

    @RequestMapping(value="/roulette.do")
    public ModelAndView roulette(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("roulette");
        return mv;
    }
}