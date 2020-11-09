package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.BoardDAO;
import vo.BoardVO;

//** Board Table 의 CRUD Service 구현
//=> selectList, selectOne, insert, update, delete 


@Service
public class BServiceImpl implements BService {
	
	@Autowired
	BoardDAO dao;
	
	//**딥글 등록
	@Override
	public List<BoardVO> selectList() {
		return dao.selectList();
	} // selectList
	
	@Override
	public BoardVO selectOne(BoardVO vo) {
		return dao.selectOne(vo);
	} // selectList
	
	
} // class
