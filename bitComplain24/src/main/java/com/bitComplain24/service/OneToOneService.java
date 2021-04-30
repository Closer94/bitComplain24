package com.bitComplain24.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitComplain24.repository.OneToOneRepository;
import com.bitComplain24.vo.OneToOneVo;

@Service
public class OneToOneService {

	@Autowired
	private OneToOneRepository oneToOneRepository; 
	
	public List<OneToOneVo> findAll() {
		return oneToOneRepository.findAll();
		
	}

}
