package cookking4.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cookking4.mapper.SqlSessionManager;
import cookking4.model.VO;

public class DAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	int cnt = 0;
	SqlSession session = null;
	
	public VO Login(VO mvo) {
		session = sqlSessionFactory.openSession(true);
		System.out.println("dao mvo : " + mvo);
		VO result = session.selectOne("Login", mvo);
		System.out.println("dao login : " + result);
		session.close();
		return result;
	}
	
	public int checkId(String userId) {
		try {
			session = sqlSessionFactory.openSession(true);
			System.out.println("넘어온 값 : " + userId);
			cnt = session.selectOne("idcheck", userId);
			System.out.println("아이디체크 : " + cnt);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}	
		
		return cnt;		
	}

	public int SignupInsert(VO mvo) {
		try {
			session = sqlSessionFactory.openSession(true);
			cnt = session.insert("SignupInsert", mvo);	
			System.out.println("SignupInsert : " + cnt);
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			session.close();		
		}

		return cnt;
	}
}
