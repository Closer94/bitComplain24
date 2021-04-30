package com.bitComplain24.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitComplain24.repository.UserRepository;
import com.bitComplain24.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public void join(UserVo vo) {
		userRepository.insert(vo);
	}

	public UserVo getUser(UserVo vo) {
		// TODO Auto-generated method stub
		return userRepository.findByIdAndPassword(vo);
	}
}
