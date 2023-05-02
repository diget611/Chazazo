package kh.spring.chazazo.member.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kh.spring.chazazo.member.model.dao.MemberDao;
import kh.spring.chazazo.member.model.dto.MemberReqDto;

import kh.spring.chazazo.member.model.dto.MemberInfoReqDto;
import kh.spring.chazazo.member.model.dto.MemberInfoRespDto;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberDao dao;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	@Override
	@Transactional
	public int insert(MemberReqDto memberDto, MemberInfoReqDto memberInfoDto) {
		String encodingPass = bcryptPasswordEncoder.encode(memberDto.getPassword());
		memberDto.setPassword(encodingPass);
		int result = dao.insert(memberDto);
		if(result == 1) {
			dao.insertInfo(memberInfoDto);
		}
		return result;	
	}

	@Override
	public int checkDup(String username) {
		return dao.checkDup(username);
	}

	@Override
	public List<String> findId(String email) {
		return dao.findId(email);
	}

	@Override
	public String forFindPass(String username) {
		return dao.forFindPass(username);
	}

	@Override
	public int findPass(String username, String password) {
		Map<String, String> info = new HashMap<String, String>();
		String encodingPass = bcryptPasswordEncoder.encode(password);
		info.put("username", username);
		info.put("password", encodingPass);
		return dao.findPass(info);
	}


	//회원정보조회
	@Override
	public MemberInfoRespDto selectMypageOne(String username) {
		return dao.selectMypageOne(username);
	}

	
	//비밀번호확인
	@Override
	public String userPass(String username) {
		return dao.userPass(username);
	}

	
	@Override
	public MemberInfoRespDto getMemberInfo(String username) {
		// TODO Auto-generated method stub
		return dao.getMemberInfo(username);
	}
	
	//회원정보수정
	@Override
	@Transactional
	public int updateInfo(MemberInfoRespDto dto) {
		Map<String, String> info = new HashMap<String, String>();
		String username = dto.getUsername();
		String password = dto.getPassword();
		String encodingPass = bcryptPasswordEncoder.encode(password);
		info.put("username", username);
		info.put("password", encodingPass);
		dao.findPass(info);
		return dao.updateInfo(dto);
	}

	

	//탈퇴 
	@Override
	public int deleteMember(String username) {
		int result = 0;
		if(dao.deleteMember(username) == 1) {
			result = dao.deleteMemberInfo(username);
		}
		return result;
	}

	



	
}
