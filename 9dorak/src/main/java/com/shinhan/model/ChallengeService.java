package com.shinhan.model;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shinhan.dto.ChallengeVO;
import com.shinhan.dto.ChalllikeVO;

@Service
public class ChallengeService {

	@Autowired
	ChallengeDAOMybatis dao;

	public List<ChallengeVO> selectAll() {
		return dao.selectAll();
	}

	public ChallengeVO selectByno(int challenge_no) {
		return dao.selectByno(challenge_no);
	}

	public int updateChall(ChallengeVO challenge) {
		return dao.updateChall(challenge);
	}

	public int insertChal(ChallengeVO challenge) {
		return dao.insertChal(challenge);
	}

	public int getLike(int challenge_no) {
		return dao.getLike(challenge_no);
	}

	public int deleteChal(int challenge_no) {
		return dao.deleteChal(challenge_no);
	}
	
	
	public int selectBoardListCnt(ChallengeVO ChallengeVO) {
		return dao.selectBoardListCnt(ChallengeVO);
	}

	public List<Map<String, Object>> list(ChallengeVO ChallengeVO) {
		return dao.list(ChallengeVO);
	}

	public int getLikecheck(ChalllikeVO challlike) {
		return dao.getLikecheck(challlike);
	}

	public int insertlikeChall(ChalllikeVO challlike) {
		return dao.insertlikeChall(challlike);
	}

	public int delelelikeChall(ChalllikeVO challlike) {
		return dao.delelelikeChall(challlike);
	}

}
