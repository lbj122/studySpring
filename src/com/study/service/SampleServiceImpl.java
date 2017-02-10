package com.study.service;

import org.springframework.stereotype.Service;

@Service("sampleService")
public class SampleServiceImpl implements SampleService{
	public String sampleString(){
		return "SpringFramework Study";
	}
}
