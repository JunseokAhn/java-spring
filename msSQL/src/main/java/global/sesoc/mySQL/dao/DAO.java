package global.sesoc.mySQL.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * 개인정보 관련 DB처리를 담당
 */
@Repository
public class DAO {
	@Autowired
	@Resource(name = "sqlSesson")
	private SqlSession session;

	public void test() {

	}
}
