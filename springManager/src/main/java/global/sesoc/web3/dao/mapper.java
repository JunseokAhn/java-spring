package global.sesoc.web3.dao;

import java.util.ArrayList;

import global.sesoc.web3.vo.Member_VO;

public interface mapper {

	public void input(Member_VO vo);
	public Member_VO search(Member_VO vo);
	public ArrayList<Member_VO> searchAll();
	public int delete(String name);
}
