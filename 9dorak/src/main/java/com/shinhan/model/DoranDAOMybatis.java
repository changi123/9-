package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.CommentVO;
import com.shinhan.dto.DCommentVO;
import com.shinhan.dto.DlikeVO;
import com.shinhan.dto.DoranVO;
import com.shinhan.dto.DoranlikeVO;


@Repository 
public class DoranDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(DoranDAOMybatis.class);
	String NAMESPACE = "net.firstzone.doran.";

	public List<DoranVO> selectAll() {
		List<DoranVO> dlist = sqlSession.selectList(NAMESPACE + "selectAll");
		System.out.println(dlist);
		logger.info("selectAll :  {}", dlist.size());
		return dlist;
	}
	
	public List<DoranVO> selectAllByView(){
		List<DoranVO> dlist = sqlSession.selectList(NAMESPACE+"selectAllByView");
		System.out.println("selectAllByView"+dlist);
		return dlist;
	}
	
	public List<DoranVO> selectAllByDlike(){
		List<DoranVO> dlist = sqlSession.selectList(NAMESPACE+"selectAllByDlike");
		System.out.println("selectAllByDlike"+dlist);
		return dlist;
	}
	
	public int insertDoran(DoranVO doran) {
		System.out.println("inserting :"+doran);
		return sqlSession.insert(NAMESPACE + "insertDoran", doran);
	}

	public List<DlikeVO> selectLike() {
		logger.info("selectLike :  {}");
		return sqlSession.selectList(NAMESPACE + "selectLike");
	}
	// 댓글 수 카운트
	public List<CommentVO> selectComment(){
		return sqlSession.selectList(NAMESPACE+"selectComment");
	}
	
	// 특정 게시물에 대한 모든 댓글 정보
    public List<CommentVO> selectAllCommentAbout(int doranNo) {
        return sqlSession.selectList(NAMESPACE + "selectAllCommentAbout", doranNo);
    }


	// 내가 쓴 글
	public List<DoranVO> selectAllForMe(String memId) {
		return sqlSession.selectList(NAMESPACE + "selectAllForMe", memId);
	}

	// 내가 쓴 글 조회수 순 조회
	public List<DoranVO> selectAllByViewForMe(String memId) {
		return sqlSession.selectList(NAMESPACE + "selectAllByViewForMe", memId);
	}
	
	// 내가 쓴 글 좋아요 순 조회
	public List<DoranVO> selectAllByDlikeForMe(String memId) {
		return sqlSession.selectList(NAMESPACE + "selectAllByDlikeForMe", memId);
	}

	public DoranVO selectDoran_no(int doran_no) {
		DoranVO doran = sqlSession.selectOne(NAMESPACE + "selectDoran_no", doran_no);
		return doran;
	}
	
	// 좋아요 추가
	public int insertDoranLike(DoranlikeVO dlike) {
		return sqlSession.insert(NAMESPACE + "insertDoranLike", dlike);
	}

	public int selectDoranLikeBy(DoranlikeVO dlike) {
		System.out.println("좋아요 체킹 "+dlike);
		return sqlSession.insert(NAMESPACE + "selectDoranLikeBy", dlike);
	}

	public int deleteDoranLike(DoranlikeVO dlike) {
		return sqlSession.insert(NAMESPACE + "deleteDoranLike", dlike);

	}
	// 검색
	public List<DoranVO>  selectSearchDoran(String keyword){
		return sqlSession.selectList(NAMESPACE + "selectSearchDoran", keyword);
	}
	
	// 댓글 추가
	public int insertComment(CommentVO comment){
		return sqlSession.insert(NAMESPACE + "insertComment", comment);
	}
	
	// 조회수 증가
	public int updateViewCount(int doran_no) {
		return sqlSession.insert(NAMESPACE + "updateViewCount", doran_no);
	}
	
	// 게시물 삭제
	public int deleteDoran(int doran_no) {
		return sqlSession.delete(NAMESPACE + "deleteDoran", doran_no);
	}



//	public BoardVO selectById(int bno) {
//		BoardVO board = sqlSession.selectOne(NAMESPACE + "selectById", bno);
//		logger.info("selectById :  {}", board.toString());
//		return board;
//	}
//
//	public int updateViewCount(int bno) {
//		int result = sqlSession.update(NAMESPACE + "viewcntIncrement", bno);
//		logger.info("updateViewCount :  {}�� ����", result);
//		return result;
//	}
//
//	public int insert(BoardVO board) {
//		int result = sqlSession.insert(NAMESPACE + "insert", board);
//		logger.info("insert :  {}�� �Է�", result);
//		return result;
//	}
//
//	public int update(BoardVO board) {
//		int result = sqlSession.update(NAMESPACE + "update", board);
//		logger.info("update :  {}�� updated", result);
//		return result;
//	}
//
//	public int delete(int bno) {
//		int result = sqlSession.delete(NAMESPACE + "delete", bno);
//		logger.info("delete :  {}�� ����", result);
//		return result;
//	}

}
