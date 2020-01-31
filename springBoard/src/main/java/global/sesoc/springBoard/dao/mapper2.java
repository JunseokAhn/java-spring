package global.sesoc.springBoard.dao;

import java.util.ArrayList;
import java.util.HashMap;

import global.sesoc.springBoard.vo.VO;

public interface mapper2 {

	int writing(VO vo);

	ArrayList<VO> reading();

	void deleting(HashMap<String, String> map);

}
