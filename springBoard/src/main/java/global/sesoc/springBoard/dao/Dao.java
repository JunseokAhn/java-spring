package global.sesoc.springBoard.dao;

import java.util.ArrayList;
import java.util.HashMap;

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

		mapper2 mapper = session.getMapper(mapper2.class);

		int res = mapper.writing(vo);

		return res > 0;
	}

	public ArrayList<VO> reading() {
		// TODO Auto-generated method stub

		mapper2 mapper = session.getMapper(mapper2.class);
		ArrayList<VO> list = mapper.reading();

		return list;
	}

	public void deleting(String num, String password) {
		// TODO Auto-generated method stub
		
		mapper2 mapper = session.getMapper(mapper2.class);
		HashMap <String, String> map = new HashMap<>();
		map.put("num", num);
		map.put("password", password);
		mapper.deleting(map);
	}

}
