package com.study.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("sampleDAO")
public class SampleDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> artistList(){
		return (List<Map<String, Object>>)selectList("sample.artistList");
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> goodsList(String no){
		return (List<Map<String, Object>>)selectList("sample.goodsList", no);
	}
}
