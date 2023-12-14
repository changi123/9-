package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.EventVO;
import com.shinhan.dto.ProVO;

@Repository
public class EventDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(EventDAOMybatis.class);
	String NAMESPACE = "net.firstzone.event.";
	
	public List<EventVO> selectAll() {
		List<EventVO> elist = sqlSession.selectList(NAMESPACE + "selectAll");
		System.out.println(elist);
		logger.info("selectAll :  {}", elist.size());
		return elist;
	}

	public List<ProVO> selectFreeAll() {
		List<ProVO> freelist = sqlSession.selectList(NAMESPACE + "selectFreeAll");
		return freelist;
	}
}
