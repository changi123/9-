package com.shinhan.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class ProVO {
	private int pro_no; //상품 고유 번호
	private String pro_name; //상품 이름
	private int pro_price; //상품 가격
	private int pro_like; //상품 좋아요 수
	private String pro_nut; //상품 영양소
	private int pro_sub; //상품 구독 수
	private Date pro_ed; //상품 유통기한
	private int pro_sc; //상품 재고 수
	private int pro_view; // 상품 조회수
	private Date pro_rd; //상품 등록 날짜
	private String pro_delete; //상품 상품 삭제 여부 여부
	private String pro_aller; //상품알레르기
	private int pro_prot; //단백질
	private int pro_carb; //탄수화물
	private int pro_prov; //지방
	private int pro_nat; //나트륨
	private int pro_sugar; //당류
	private int pro_cal; //칼로리
	private int pro_weight; //중량
	private String ingre_no; //카테고리 번호
	private String order_type; //정렬 
	private String pro_sub9; //상품 배부르구 메뉴 여부
	private String pro_sub19; //상품 배터지구 메뉴 여부
	private String pro_free; //무료 상품 여부
	
}
