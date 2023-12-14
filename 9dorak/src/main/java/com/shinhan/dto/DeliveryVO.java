package com.shinhan.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@ToString
public class DeliveryVO {
	private int order_no; // 주문 고유 번호
	private String delivery_addr; // 받는 분 주소
	private String delivery_phone; // 받는 분 전화번호
	private String delivery_name; // 받는 분 성함
	private String delivery_comment; // 배송시 요청 사항
	private String delivery_status; // 배송 상태
	private String delivery_postnum; // 우편번호
	private int delivery_number; // 송장번호
	private Date order_date; // 주문 날짜
}
