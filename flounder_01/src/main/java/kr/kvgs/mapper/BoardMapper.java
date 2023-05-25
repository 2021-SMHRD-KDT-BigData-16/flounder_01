package kr.kvgs.mapper;

import org.apache.ibatis.annotations.Select;

import kr.kvgs.entity.Member;

public interface BoardMapper {
	// 회원 로그인 처리 메서드 정의
	@Select("select * from member where m_email=#{m_email} and m_pw=#{m_pw}")
	public Member login(Member mvo);

}
