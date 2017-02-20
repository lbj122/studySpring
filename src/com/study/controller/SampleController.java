package com.study.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
   /* �׽�Ʈ
    @RequestMapping(value="/blog.do")
    public ModelAndView Sample(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("blog");
        log.debug("log ::: blog Page333");
        String test = sampleService.sampleString();
        mv.addObject("test", test);
        return mv;
    }*/
    
    @RequestMapping(value="/test.do")
    public ModelAndView test(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("test");
        String num = "1";
        List<Map<String, Object>> test = sampleService.selectName(num);
        mv.addObject("test", test);
        mv.addObject("git", "merge test");
        return mv;
    }
    
    /*@RequestMapping(value="/include/test.do")
    public ModelAndView test2(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/include/test");
        String test = sampleService.sampleString();
        mv.addObject("test", test);
        return mv;
    }*/
    
    @RequestMapping(value="/roulette.do")
    public ModelAndView roulette(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("roulette");
        return mv;
    }
}