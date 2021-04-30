package com.bitComplain24.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bitComplain24.vo.OneToOneVo;

@Repository
public class OneToOneRepository {
	
	@Autowired
	private SqlSession sqlSession;

	public List<OneToOneVo> findAll() {
		List<OneToOneVo> list = sqlSession.selectList("onetoone.findAll");
		
		return list;
	}

}
