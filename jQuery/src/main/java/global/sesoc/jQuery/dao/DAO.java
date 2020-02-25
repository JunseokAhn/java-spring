package global.sesoc.jQuery.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


/**
 * 개인정보 관련 DB처리를 담당
 */
@Repository
public class DAO {
	@Autowired
	private SqlSession session;
	
	

}
