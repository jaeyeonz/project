package cookking4.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cookking4.mapper.SqlSessionManager;
import cookking4.model.VO;

public class DAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	int cnt = 0;
	SqlSession session = null;
	VO result = null;
	
	// 사용자 로그인
	public VO Login(VO mvo) {
		try {
			session = sqlSessionFactory.openSession(true);
			result = session.selectOne("Login", mvo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	
	// 아이디 중복 체크
	public int checkId(String userId) {
		try {
			session = sqlSessionFactory.openSession(true);
			cnt = session.selectOne("idcheck", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}	
		
		return cnt;		
	}

	// 회원가입
	public int SignupInsert(VO mvo) {
		try {
			session = sqlSessionFactory.openSession(true);
			cnt = session.insert("SignupInsert", mvo);	
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			session.close();		
		}

		return cnt;
	}
}
