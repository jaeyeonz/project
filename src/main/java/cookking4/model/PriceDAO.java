package cookking4.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cookking4.mapper.SqlSessionManager;

public class PriceDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public List<PriceVO> EmartList() {

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
		List<PriceVO> list1 = session.selectList("EmartSearch");
		

		// 3. 빌려온 session 반환
		session.close();

		// 4. 쿼리실행 결과 리턴
		return list1;

	}
	public List<PriceVO> LotteList() {
		
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
		List<PriceVO> list = session.selectList("LotteSearch");
		
		
		// 3. 빌려온 session 반환
		session.close();
		
		// 4. 쿼리실행 결과 리턴
		return list;
		
	}
	public List<PriceVO> HomeList() {
		
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
		List<PriceVO> list = session.selectList("HomeSearch");
		
		
		// 3. 빌려온 session 반환
		session.close();
		
		// 4. 쿼리실행 결과 리턴
		return list;
		
	}
	
}
