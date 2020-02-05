package global.sesoc.web3.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.web3.vo.Member_VO;

@Repository
public class dao {

	@Autowired
	private SqlSession session;

	public Member_VO input(Member_VO vo) {
		// TODO Auto-generated method stub

		mapper mapper = session.getMapper(mapper.class);

		mapper.input(vo);

		return vo;
	}


	public ArrayList<Member_VO> searchAll() {
		// TODO Auto-generated method stub
		
		mapper mapper = session.getMapper(mapper.class);
		ArrayList<Member_VO> list = mapper.searchAll();
		
		return list;
	}

	public boolean delete(String name) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		int res = mapper.delete(name);
		
		return res>0;
	}

	public Member_VO search(String doubleCheck) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		Member_VO vo = mapper.search(doubleCheck);
		return vo;
	}


	public boolean updating(Member_VO vo) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		int res = mapper.updating(vo);
		return res>0;
	}

}
