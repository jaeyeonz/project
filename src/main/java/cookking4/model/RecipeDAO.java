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
	List<FavoriteVO> favlist = null;
	int cnt = 0;
	
	
	///////////////////// 모든 레시피
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
	
	////////////// 검색된 레시피
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

	// 레시피 평점주기
	public int reviewPoint(RecipeVO pointVO) {
		SqlSession session = sqlSessionFactory.openSession(true);
		try {			
			cnt = session.update("reviewPoint", pointVO);
			System.out.println("review - DAO" + " : " + cnt);
		} catch(Exception e) {
			e.printStackTrace();
		}
		session.close();
		
		return cnt;	
	}
	
	public List<RefVO> refSelect(int member_id) {
		SqlSession session = sqlSessionFactory.openSession(true);

		// 2. sql문 실행
		// select : 1) selectOne : select문의 결과가 하나 -> VO
		// 2) selectList : select문의 결과가 다수 -> List<VO>
		// insert delete update : 똑같은 이름의 메소드 사용
		// selectList("id", parameter)
		// 채워줄 바인드 있으면 id, 채울값
		// 없으면 id만
		List<RefVO> list = session.selectList("refSelect", member_id);

		// 3. 빌려온 session 반환
		session.close();

		// 4. 쿼리실행 결과 리턴
		return list;
	}

	// mart_price sql구문 실행

	// mart_price sql구문 실행

	// 선호식재료 리트스
	public List<FavoriteVO> favoriteSelect(FavoriteVO fvo) {
		try {
			session = sqlSessionFactory.openSession(true);
			System.out.println("session : " + fvo);
			favlist = session.selectList("favoriteSelect", fvo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}		
		return favlist;
	}

	public List<RecipeVO> priceList() {
		
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
		List<RecipeVO> list = session.selectList("priceList");

		// 3. 빌려온 session 반환
		session.close();

		// 4. 쿼리실행 결과 리턴
		return list;

	}
}
