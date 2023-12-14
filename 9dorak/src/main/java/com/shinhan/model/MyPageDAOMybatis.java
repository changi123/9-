package com.shinhan.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.CouponVO;
import com.shinhan.dto.DeliveryVO;
import com.shinhan.dto.MemDeliveryVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.ProVO;

@Repository
public class MyPageDAOMybatis {

	@Autowired
	SqlSession sqlSession;
	Logger logger = LoggerFactory.getLogger(MyPageDAOMybatis.class);
	String NAMESPACE = "net.firstzone.myPage.";

	public MemVO getMember(String login_id) {
		// TODO Auto-generated method stub
		MemVO mem = sqlSession.selectOne(NAMESPACE + "getMember", login_id);
		return mem;
	}

	public int updateMember(MemVO mem) {
		int result = sqlSession.update(NAMESPACE + "updateMember", mem);
		return result;
	}

	public int deleteMember(String mem_id) {
		// TODO Auto-generated method stub
		int result = sqlSession.delete(NAMESPACE + "deleteMember", mem_id);
		return result;
	}

	public List<MemDeliveryVO> getDelivery(String mem_id) {
		List<MemDeliveryVO> dlist = sqlSession.selectList(NAMESPACE + "getDelivery", mem_id);
		return dlist;
	}

	public int deleteDelivery(MemDeliveryVO memdel) {
		int result = sqlSession.delete(NAMESPACE + "deleteDelivery", memdel);
		return result;
	}

	public int insertDelivery(MemDeliveryVO memDel) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert(NAMESPACE + "insertDelivery", memDel);
		return result;
	}

	public int selectDelivery(MemDeliveryVO memDel) {
		int result = sqlSession.selectOne(NAMESPACE + "selectDelivery", memDel);
		return result;
	}

	//

	public List<ProVO> getLikeList(String mem_id) {
		List<ProVO> likeList = sqlSession.selectList(NAMESPACE + "getLikeList", mem_id);
		return likeList;
	}

	public List<CouponVO> getCoupon(String mem_id) {
		List<CouponVO> cList = sqlSession.selectList(NAMESPACE + "getCoupon", mem_id);
		return cList;
	}

	public int couponCheck(CouponVO coupon) {
		int result = sqlSession.selectOne(NAMESPACE + "couponCheck", coupon);
		return result;
	}

	public int couponRegUpdate(CouponVO coupon) {
		int result = sqlSession.update(NAMESPACE + "couponRegUpdate", coupon);
		return result;
	}

	public int profileUpdate(MemVO memVO) {
		int result = sqlSession.update(NAMESPACE + "profileUpdate", memVO);
		return result;
	}

	public int profileDelete(MemVO memVO) {
		int result = sqlSession.update(NAMESPACE + "profileDelete", memVO);
		return result;
	}
	
	
	
	//주문내역
	public List<Map<String, Object>>  orderList(String mem_id) {
		List<Map<String, Object>> myorderList = sqlSession.selectList(NAMESPACE + "orderList", mem_id);
		return myorderList;
	}
	//결제내역
	public List<Map<String, Object>>  paymentList(String mem_id) {
		List<Map<String, Object>> myPaymentList = sqlSession.selectList(NAMESPACE + "paymentList", mem_id);
		return myPaymentList;
	}
	
	// 배송 조회 내역
	public List<DeliveryVO> AllDeliveryHistory(String mem_id){
		List<DeliveryVO> dlist = sqlSession.selectList(NAMESPACE + "AllDeliveryHistory", mem_id);
		return dlist;
	}



//	public List<MemVO> selectAll() {
//		List<MemVO> mlist = sqlSession.selectList(NAMESPACE + "selectAll");
////		System.out.println(mlist);
////		logger.info("selectAll :  {}", blist.size());
//		return mlist;
//	}

//	public int idCheck(String mem_id) {
//		// TODO Auto-generated method stub
//	
//		return sqlSession.selectOne(NAMESPACE + "idCheck",mem_id);
//	}
//
//	public int codeChcek(String mem_code) {
//		// TODO Auto-generated method stub
//		return sqlSession.selectOne(NAMESPACE + "codeCheck", mem_code);
//	}
//
//	public int inserMember(MemVO mem) {
//		// TODO Auto-generated method stub
////		System.out.println(mem);
//		return sqlSession.insert(NAMESPACE + "insertMember", mem);
//		
//	}

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
