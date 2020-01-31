package global.sesoc.web3.dao;

import java.util.ArrayList;

import global.sesoc.web3.vo.VO;

public interface mapper {

	public void input(VO vo);
	public VO search(VO vo);
	public ArrayList<VO> searchAll();
	public int delete(String name);
}
