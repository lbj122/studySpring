package com.study.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("sampleDAO")
public class SampleDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectName(String num){
		log.debug(num);
		return (List<Map<String, Object>>)selectList("sample.selectName", num);
	}
}
