package com.study.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.study.dao.SampleDAO;

@Service("sampleService")
public class SampleServiceImpl implements SampleService{
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO;
		
	@Override
	public List<Map<String, Object>> artistList(){
		return sampleDAO.artistList();
	}
	
	@Override
	public List<Map<String, Object>> goodsList(String no){
		return sampleDAO.goodsList(no);
	}
}
