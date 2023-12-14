package com.shinhan.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.ProVO;


@Service
public class MenuService {

	@Autowired
	MenuDAOMybatis dao;

	public List<ProVO> selectAll() {
		return dao.selectAll();
	}
	
	public List<ProVO> selectSearchPro(ProVO pro) {
		return dao.selectSearchPro(pro);
	}

	public List<ProVO> selectOrderbyNew() {
		return dao.selectOrderbyNew();
	}

	public List<ProVO> selectOrderbyLike() {
		return dao.selectOrderbyLike();
	}

//	public List<ProVO> searchAllergyCheck(String pro_aller) {
//		return dao.searchAllergyCheck(pro_aller);
//	}

	public List<ProVO> selectAllOrder(ProVO pro) {
		return dao.selectAllOrder(pro);
	}

	public List<ProVO> selectCtgrOrder(ProVO pro) {
		return dao.selectCtgrOrder(pro);
	}

	public ProVO selectByNo(int pro_no) {
		return dao.selectByNo(pro_no);
	}

	public List<ProVO> searchCategoryCheck(String ingre_no) {
		return dao.searchCategoryCheck(ingre_no);
	}
	
	public List<Map<String, Object>> selectProReview(int prono) {
		return dao.selectProReview(prono);
	}
	
	public Map<String, Object> reviewCnt(int prono){
		return dao.proRevwCnt(prono);
	}
	
	public int selectReserveYn (Map<String, Object> map) {
		return dao.selectReserveYn(map);
	}
	
	public int insertReserve (Map<String, Object> map) {
		return dao.insertReserve(map);
	}
	
	public int deleteReserve (Map<String, Object> map) {
		return dao.deleteReserve(map);
	}
	
	public int updateReserve(String pro_no) {
		return dao.updateReserve(pro_no);
	}

	public List<ProVO> searchAllergyCheck(ProVO pro) {
		return dao.searchAllergyCheck(pro);
	}
	

//	public int insertMember(DoranVO doran) {
//		return dao.insertDoran(doran);
//	}

//
//	@Transactional // ��� �����ϰų� ��� �����ϰų�
//	public MemVO updateTransViewCount(int bno) {
//		MemVO board = dao.selectById(bno);
//		dao.updateViewCount(bno);
//		return board;
//	}
//
//	public int insert(BoardVO board) {
//		System.out.println(board+ "service");
//		return dao.insert(board);
//	}
//
//	public int update(BoardVO board) {
//		return dao.update(board);
//	}
//
//	public int delete(int bno) {
//		return dao.delete(bno);
//	}

}
