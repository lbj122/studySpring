package com.study.service;

import java.util.List;
import java.util.Map;

public interface SampleService {
	List<Map<String, Object>> artistList();
	List<Map<String, Object>> goodsList(String no);
}
