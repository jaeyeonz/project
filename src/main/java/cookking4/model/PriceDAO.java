package cookking4.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cookking4.mapper.SqlSessionManager;

public class PriceDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public List<PriceVO> EmartList(String ingr_info_irdnt_nm) {

		// 1. SqlSession 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);

		// 2. sql문 실행
		List<PriceVO> list1 = session.selectList("EmartSearch",ingr_info_irdnt_nm);
		
		// 3. 빌려온 session 반환
		session.close();

		// 4. 쿼리실행 결과 리턴
		return list1;

	}
	
	public List<PriceVO> LotteList(String ingr_info_irdnt_nm) {
		
		// 1. SqlSession 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);
		
		// 2. sql문 실행
		List<PriceVO> list = session.selectList("LotteSearch",ingr_info_irdnt_nm);
		
		// 3. 빌려온 session 반환
		session.close();
		
		// 4. 쿼리실행 결과 리턴
		return list;
		
	}

	public List<PriceVO> HomeList(String ingr_info_irdnt_nm) {
		
		// 1. SqlSession 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);
		
		// 2. sql문 실행
		List<PriceVO> list = session.selectList("HomeSearch",ingr_info_irdnt_nm);
		
		// 3. 빌려온 session 반환
		session.close();
		
		// 4. 쿼리실행 결과 리턴
		return list;
		
	}
	
}
