package kh.spring.chazazo.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.member.model.dao.MemberDao;
import kh.spring.chazazo.member.model.vo.MemberVo;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberDao dao;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Override
	public int insert(MemberVo vo) {
		System.out.println("###################################");
		System.out.println("before encoding : " + vo.getPassword());
		String encodingPass = bcryptPasswordEncoder.encode(vo.getPassword());
		System.out.println("after encoding : " + encodingPass);
		System.out.println("userinfo : " + vo);
		System.out.println("###################################");
		vo.setPassword(encodingPass);
		return dao.insert(vo);
	}

}
