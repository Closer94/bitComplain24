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
	
	public List<OneToOneVo> findAll(int page, String nickname) {
		return oneToOneRepository.findAll(page, nickname);
		
	}
	
	public List<OneToOneVo> search(String searchOption, String keyword, int page) {
		return oneToOneRepository.search(searchOption, keyword, page);
		
	}

	public OneToOneVo findOne(String no) {

		return oneToOneRepository.findOne(no);
	}

	public boolean write(OneToOneVo vo) {
		return oneToOneRepository.write(vo);

	}

}
