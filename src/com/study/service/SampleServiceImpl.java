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
	public List<Map<String, Object>> selectName(String num){
		return sampleDAO.selectName(num);
	}
}
