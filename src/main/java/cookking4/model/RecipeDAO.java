package cookking4.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cookking4.mapper.SqlSessionManager;

public class RecipeDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	SqlSession session = null;
	List<RecipeVO> detailvo = null;
	
	public List<RecipeVO> recipeList() {

		// 1. SqlSession 빌려오기
		// openSession(auto commit);
		SqlSession session = sqlSessionFactory.openSession(true);

		// 2. sql문 실행
		// select : 1) selectOne : select문의 결과가 하나 -> VO
		// 2) selectList : select문의 결과가 다수 -> List<VO>
		// insert delete update : 똑같은 이름의 메소드 사용
		// selectList("id", parameter)
		// 채워줄 바인드 있으면 id, 채울값
		// 없으면 id만
		List<RecipeVO> list = session.selectList("recipeList");

		// 3. 빌려온 session 반환
		session.close();

		// 4. 쿼리실행 결과 리턴
		return list;

	}
	
	public List<RecipeVO> recipeSearchList(String keyword) {
		SqlSession session = sqlSessionFactory.openSession(true);

		// 2. sql문 실행
		// select : 1) selectOne : select문의 결과가 하나 -> VO
		// 2) selectList : select문의 결과가 다수 -> List<VO>
		// insert delete update : 똑같은 이름의 메소드 사용
		// selectList("id", parameter)
		// 채워줄 바인드 있으면 id, 채울값
		// 없으면 id만
		List<RecipeVO> list = session.selectList("recipeSearch", keyword);

		// 3. 빌려온 session 반환
		session.close();

		// 4. 쿼리실행 결과 리턴
		return list;
		
		
	}

	// Recipe Detail 
	public List<RecipeVO> recipeDetail(int recipeNum) {
		try {
			session = sqlSessionFactory.openSession(true);
			System.out.println("session : " + recipeNum);
			detailvo = session.selectList("recipeDetail", recipeNum);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}		
		return detailvo;
	}
	
	// 페이지나누기
	public int recipePage(String keyword) {
		
		int cnt = 0;
		
		try {
			session = sqlSessionFactory.openSession(true);
			System.out.println("session : " + cnt);
			cnt = session.selectOne("recipePage", keyword);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}		
		return cnt;
	}
	
}
