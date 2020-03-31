package global.sesoc.mySQL.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * 개인정보 관련 DB처리를 담당
 */
@Repository
public class DAO2 {
	@Autowired
	@Resource(name = "sqlSesson2")
	private SqlSession session;

	public void test() {
		
	}
}
