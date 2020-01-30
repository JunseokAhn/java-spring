package global.sesoc.springBoard.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.springBoard.vo.VO;

@Repository
public class Dao {

	@Autowired
	private SqlSession session;

	public boolean writing(VO vo) {
		// TODO Auto-generated method stub
		System.out.println(1);
		mapper2 mapper = session.getMapper(mapper2.class);
		System.out.println(2);
		int res = mapper.writing(vo);
		System.out.println(3);
		return res > 0;
	}

}
