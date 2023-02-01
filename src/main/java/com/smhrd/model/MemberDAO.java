package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	
	public int insertMember(Member vo){ //회원가입 메소드
		int cnt = 0;
		try {
			// 실행
			// insert("실행할 sql정의. 자체작성아님" 그건매퍼에서작성,)
			// mapper의 namespace + id (에 해당하는 sql쓸거야)
			cnt = sqlSession.insert("com.smhrd.model.MemberDAO.insertMember", vo);
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
	
	
	
	
	public Member selectMember(Member vo) { //로그인 메소드
		Member loginMember= null;
		
		try {
			loginMember = sqlSession.selectOne("com.smhrd.model.MemberDAO.selectMember",vo);
			// select - commit/rollback 생략
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return loginMember;
	}
	
	
	
	public boolean idCheck(String inputE) { //이메일체크 메소드
		boolean checkE = false;
		//db에 있는 값 확인할때는 try-catch-finally문
		
		try {
		checkE=	sqlSession.selectOne("com.smhrd.model.MemberDAO.idCheck",inputE);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return checkE;
	}
	
	
	
	
	
	
}
