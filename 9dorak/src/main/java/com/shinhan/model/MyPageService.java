package com.shinhan.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.CouponVO;
import com.shinhan.dto.MemDeliveryVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.ProVO;

@Service
public class MyPageService {

	@Autowired
	MyPageDAOMybatis dao;

	public MemVO getMember(String login_id) {
		// TODO Auto-generated method stub
		return dao.getMember(login_id);
	}

	public int updateMember(MemVO mem) {
		// TODO Auto-generated method stub
		return dao.updateMember(mem);
	}

	public int deleteMember(String mem_id) {
		// TODO Auto-generated method stub
		return dao.deleteMember(mem_id);
		
	}

	public List<MemDeliveryVO> getDelivery(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getDelivery(mem_id);
	}

	public int deleteDelivery(MemDeliveryVO memdel) {
		// TODO Auto-generated method stub
	
		return dao.deleteDelivery(memdel);
	}

	public int insertDelivery(MemDeliveryVO memDel) {
		// TODO Auto-generated method stub
		return dao.insertDelivery(memDel);
	}

	public int selectDelivery(MemDeliveryVO memDel) {
		// TODO Auto-generated method stub
		return dao.selectDelivery(memDel);
	}


	
	//
	
	public List<ProVO> getLikeList(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getLikeList(mem_id);
	}
	public List<CouponVO> getCoupon(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getCoupon(mem_id);
	}
	public int couponCheck(CouponVO coupon) {
		// TODO Auto-generated method stub
		return dao.couponCheck(coupon);
	}
	public int couponRegUpdate(CouponVO coupon) {
		// TODO Auto-generated method stub
		return dao.couponRegUpdate(coupon);
	}

	public int profileUpdate(MemVO memVO) {
		// TODO Auto-generated method stub
		return dao.profileUpdate(memVO);
	}

	public int profileDelete(MemVO memVO) {
		// TODO Auto-generated method stub
		return dao.profileDelete(memVO);
	}
	
	
	//주문내역
	public List<Map<String, Object>>  orderList(String mem_id) {		
		return dao.orderList(mem_id);
	}
	//결제내역
	public List<Map<String, Object>>  paymentList(String mem_id) {		
		return dao.paymentList(mem_id);
	}
	//결제취소내역
	public List<Map<String, Object>>  cancelList(String mem_id) {		
		return dao.cancelList(mem_id);
	}






	



}
