package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BoardDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public int insertBuyBoard(Board vo){
		int cnt = 0;
		try {
			// 실행
			cnt = sqlSession.insert("com.smhrd.model.BoardDAO.insertBuyBoard", vo);
			if (cnt > 0) {
				sqlSession.commit(); // DML이지만 여기서는 커밋사용함.
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
		
	}
	
	public int insertBuyBoardMember(Board vo){
		int cnt = 0;
		try {
			// 실행
			cnt = sqlSession.insert("com.smhrd.model.BoardDAO.insertBuyBoardMember", vo);
			if (cnt > 0) {
				sqlSession.commit(); // DML이지만 여기서는 커밋사용함.
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;  
		
	}
	
	
	public List<Board> selectAllList() {
		List<Board> list =null;
		try {
			//모든정보를 가져오려고하므로 인자필요없음.
			list=sqlSession.selectList("com.smhrd.model.BoardDAO.selectAllList"); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	
	public List<Board> selectAllListPage(int num) {
		List<Board> list =null;
		try {
			list=sqlSession.selectList("com.smhrd.model.BoardDAO.selectAllListPage",num); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	
	
	public Board selectOne(int num) {
		Board vo= null;
	
	try {
		vo = sqlSession.selectOne("com.smhrd.model.BoardDAO.selectOne",num);
		// select - commit/rollback 생략
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		sqlSession.close();
	}
	
	return vo;
	}
}
