package com.bitComplain24.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bitComplain24.vo.UserVo;

@Repository
public class UserRepository {
	
	@Autowired
	private SqlSession sqlSession;

	public boolean insert(UserVo vo) {
		
		int count = sqlSession.insert("user.insert", vo);			
		boolean result = count == 1;
		
		return result; 
	}

	public UserVo findByIdAndPassword(UserVo vo) {
		UserVo userVo = sqlSession.selectOne("user.findByIdAndPassword", vo);
		
		return userVo;
	}
	
}
