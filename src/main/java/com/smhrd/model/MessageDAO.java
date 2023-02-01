package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MessageDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public int insertMessage(Message vo){
		int cnt = 0;
		try {
			// 실행
			// insert("실행할 sql정의. 자체작성아님" 그건매퍼에서작성,)
			// mapper의 namespace + id (에 해당하는 sql쓸거야)
			cnt = sqlSession.insert("com.smhrd.model.MessageDAO.insertMessage", vo);
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
	
	public List<Message> selectAllMessage(String email) {
		List<Message> list =null;
		try {
			//모든정보를 가져오려고하므로 인자필요없음.
			list=sqlSession.selectList("com.smhrd.model.MessageDAO.selectAllMessage",email); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	
	public int deleteMessage(int num) {
		int cnt =0;
		try {
		 cnt = sqlSession.delete("com.smhrd.model.MessageDAO.deleteMessage",num);
		 if(cnt>0) {
			 sqlSession.commit();
		 }else {
			 sqlSession.rollback();
		 }
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return cnt;
	}

	
	public int deleteMessageAll(String email) {
		int cnt =0;
		try {
		 cnt = sqlSession.delete("com.smhrd.model.MessageDAO.deleteMessageAll",email);
		 if(cnt>0) {
			 sqlSession.commit();
		 }else {
			 sqlSession.rollback();
		 }
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return cnt;
	}



}




