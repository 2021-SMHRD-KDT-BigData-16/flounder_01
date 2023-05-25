package kr.kvgs.mapper;

import org.apache.ibatis.annotations.Select;

import kr.kvgs.entity.Fuser;

public interface BoardMapper {
	// 회원 로그인 처리 메서드 정의
	@Select("select * from fuser where uemail=#{uemail} and upw=#{upw}")
	public Fuser login(Fuser mvo);

}
