package global.sesoc.sample.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.sample.vo.Person;

/**
 * 개인정보 관련 DB처리를 담당
 */
@Repository
public class PersonDAO {
	@Autowired
	private SqlSession session;
	
	/**
	 * 전달된 Person객체의 값을 DB로 저장
	 * @param person
	 */
	public void insertPerson(Person person) {
		PersonMapper mapper = session.getMapper(PersonMapper.class);
		
		try {
			mapper.insertPerson(person);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
