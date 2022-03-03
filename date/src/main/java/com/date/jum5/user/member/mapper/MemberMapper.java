package com.date.jum5.user.member.mapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.date.jum5.user.member.dao.MemberDao;
import com.date.jum5.user.member.vo.MemberVo;

@Service
public class MemberMapper {
	
	private MemberDao memberdao;
	
	@Autowired
	public MemberMapper(MemberDao memberdao) {
		this.memberdao = memberdao;
	}
	
	//회원가입
	public void registMember(MemberVo member) {
		memberdao.registMember(member);
	}
	
	//아이디 중복 체크
	public int idCheck(String id) {
		return memberdao.idCheck(id);
	}
	
	public int nickNameCheck(String nickName) {
		return memberdao.nickNameCheck(nickName);
	}
	
	public int emailCheck(String email) {
		return memberdao.emailCheck(email);
	}
	
	//마이 페이지
	public List<MemberVo> myPage(String id) {
		return memberdao.myPage(id);
	}
		
	//마이페이지 테스트
	public List<MemberVo> list(){
		return memberdao.list();
	}

	public int withdraw() {
		// TODO Auto-generated method stub
		return memberdao.withdraw();
	}
	
	//카카오로 로그인했을떄 해당 유저 정보 존재하는지 확인
	public int kakaoMemberCheck(String kakaoId) {
		return memberdao.kakaoMemberCheck(kakaoId);
	}

}
