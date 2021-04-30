package com.bitComplain24.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bitComplain24.vo.OneToOneVo;

@Repository
public class OneToOneRepository {
	
	@Autowired
	private SqlSession sqlSession;
	
/*
	public List<OneToOneVo> findAll() {
		List<OneToOneVo> list = sqlSession.selectList("onetoone.findAll");
		
		return list;
	}
*/
	public List<OneToOneVo> findAll(int page) {
		int start = 1 + (page-1) * 10; //1, 11, 21, 31
		int end = page * 10; //10, 20, 30, 40
		Map params = new HashMap();
		params.put("start", start);
		params.put("end", end);
		

		return sqlSession.selectList("onetoone.findAll", params);
	}

	public List<OneToOneVo> search(String searchOption, String keyword, int page) {
		int start = 1 + (page-1) * 10; //1, 11, 21, 31
		int end = page * 10; //10, 20, 30, 40
		Map params = new HashMap();
		params.put("start", start);
		params.put("end", end);
		params.put("keyword", keyword);
		
		if(searchOption.equals("titleContent")) {
			return sqlSession.selectList("onetoone.searchTitleContent", params);
		}
		else
			return sqlSession.selectList("onetoone.searchTitle", params);
		
	}

}
