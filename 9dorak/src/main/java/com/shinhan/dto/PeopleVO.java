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
public class PeopleVO {
	private String people_code; // 지인 고유 번호
	private String people_category; // 지인 구분
	private Date people_date ; //지인 등록 날짜
	private String mem_id ; //회원 아이디

}
