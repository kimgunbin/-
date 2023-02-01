package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ReplyDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public int insertReply(Reply vo){
		int cnt = 0;
		try {
			// 실행
			cnt = sqlSession.insert("com.smhrd.model.ReplyDAO.insertReply", vo);
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
	
	public List<Reply> selectReply(int boardnum) {
		List<Reply> list =null;
		try {
			//모든정보를 가져오려고하므로 인자필요없음.
			list=sqlSession.selectList("com.smhrd.model.ReplyDAO.selectReply",boardnum); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	
}
