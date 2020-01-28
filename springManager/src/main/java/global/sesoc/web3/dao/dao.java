package global.sesoc.web3.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.web3.vo.VO;

@Repository
public class dao {

	@Autowired
	private SqlSession session;

	public void input(String name, int age, String address) {
		// TODO Auto-generated method stub

		mapper mapper = session.getMapper(mapper.class);
		VO vo = new VO(name, age, address);
		
		/*
		 * VO vo = new VO(); vo.setAge(age); vo.setAddress(address); vo.setName(name);
		 */
		mapper.input(vo);
	}

	public VO search(VO vo) {
		// TODO Auto-generated method stub

		mapper mapper = session.getMapper(mapper.class);
		VO res = mapper.search(vo);

		return res;
	}

}
