package global.sesoc.web3.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.web3.vo.VO;

@Repository
public class dao {

	@Autowired
	private SqlSession session;

	public VO input(VO vo) {
		// TODO Auto-generated method stub

		mapper mapper = session.getMapper(mapper.class);

		mapper.input(vo);

		return vo;
	}

	public VO login(VO vo) {
		// TODO Auto-generated method stub

		mapper mapper = session.getMapper(mapper.class);
		VO res = mapper.search(vo);

		return res;
	}

	public ArrayList<VO> searchAll() {
		// TODO Auto-generated method stub
		
		mapper mapper = session.getMapper(mapper.class);
		ArrayList<VO> list = mapper.searchAll();
		
		return list;
	}

	public boolean delete(String name) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		int res = mapper.delete(name);
		
		return res>0;
	}

}
