package jdbcUtil;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import vo.BoardVO;

// ** Board Table 의 CRUD 구현 : Mybatis
// => selectList, selectOne, insert, update, delete 
@Repository
public class BoardDAO {

	@PersistenceContext
	private EntityManager emanager;

	private static final String NS = "com.ncs.BoardMapper.";

	public List<BoardVO> selectList() {
		// ** join Test
		// return sqlsession.selectList(NS+"joinList");
		return emanager.createQuery("from BoardVO order by root desc, step asc").getResultList();
	} // selectList

	public BoardVO selectOne(BoardVO vo) {
		return emanager.find(BoardVO.class, vo.getSeq());
	} // selectOne

} // class
