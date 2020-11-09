package service;

import java.util.List;

import vo.BoardVO;

public interface BService {

	List<BoardVO> selectList(); // selectList

	BoardVO selectOne(BoardVO vo); // selectList



}