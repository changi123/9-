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
public class CommentVO {
	private int comment_no; // 댓글 고유 번호
	private String comment_cont; // 댓글 내용
	private Date comment_date; // 댓글 날짜
	private int doran_no; // 도란도란 고유 번호
	private String mem_id; // 회원 아이디
}
