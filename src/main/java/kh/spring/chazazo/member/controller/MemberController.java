package kh.spring.chazazo.member.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import kh.spring.chazazo.member.model.dto.MemberReqDto;
import kh.spring.chazazo.member.model.dto.MemberUpdateInfoRespDto;
import kh.spring.chazazo.common.email.MailSendService;
import kh.spring.chazazo.member.model.dto.MemberInfoReqDto;
import kh.spring.chazazo.member.model.dto.MemberInfoRespDto;
import kh.spring.chazazo.member.model.service.MemberService;
import kh.spring.chazazo.payment.model.service.PaymentService;

@RestController
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService mService;
	@Autowired
	private MailSendService mailService;
	@Autowired
	private PasswordEncoder passwordEncoder;
	@Autowired
	private PaymentService pService;


    

	@GetMapping
	public ModelAndView viewMemberList(ModelAndView mv) {
		// 관리자 회원 리스트 조회
		return mv;
	}

	@GetMapping("/login")
	public ModelAndView viewLogin(ModelAndView mv) {
		mv.setViewName("member/login");
		return mv;
	}

	@GetMapping("/profile")
	public ModelAndView viewMemberOne(ModelAndView mv, Principal prin) {
		// 마이페이지에 들어가는 url
		
		if(prin == null) {
			mv.setViewName("member/mypage");
		}else{
			
			String loginId = prin.getName();
			mv.addObject("memberinfo", mService.selectMypageOne(loginId));
			mv.addObject("reservation", pService.selectList(loginId));
			
			mv.setViewName("member/mypage");
		
		}
		return mv;
	}

	@GetMapping("/register")
	public ModelAndView viewInsertMember(ModelAndView mv) {
		mv.setViewName("member/register");
		return mv;
	}

	@PostMapping("/register")
	public ModelAndView insertMember(ModelAndView mv, MemberReqDto memberDto, MemberInfoReqDto memberInfoDto) {
		int result = mService.insert(memberDto, memberInfoDto);
		if (result > 0) {
			mv.setViewName("redirect:/member/login");
		} else {
			mv.setViewName("redirect:/");
		}
		return mv;
	}

	@GetMapping("/register/exist")
	public int checkDup(String username) {
		int result = mService.checkDup(username);
		return result;
	}

	// 이메일 인증번호 보내기
	@GetMapping("/register/email")
	public String checkEmail(String email) {
		return mailService.joinEmail(email);
	}

	@GetMapping("/find")
	public ModelAndView viewFindPage(ModelAndView mv) {
		mv.setViewName("member/find");
		return mv;
	}

	@GetMapping("/findid")
	public List<String> findId(ModelAndView mv, String email) {
		List<String> idxList = new ArrayList<String>();
		idxList = mService.findId(email);
		return idxList;
	}

	@GetMapping("/findpass")
	public int findPass(ModelAndView mv, String username, String email) {
		int result = 0;

		String emailChk = mService.forFindPass(username);
		if (email.equals(emailChk)) {
			// 입력한 아이디의 이메일 정보와 입력한 이메일이 일치하면 비밀번호 변경 후 메일 전송, result = 1

			// 임시 비밀번호용 랜덤 문자열 생성
			String randomPass = RandomStringUtils.randomAlphanumeric(6);
			int changePass = mService.findPass(username, randomPass);

			if (changePass == 1) {
				// 임시 비밀번호로 비밀번호 변경 완료 -> 메일 전송
				mailService.findPassEmail(email, randomPass);
				result = 1;
			} else {
				// 오류 발생, result = 2
				result = 2;
			}
		} else {
			// 입력한 아이디의 이메일 정보와 입력한 이메일이 일치하지 않으면 아무런 변경사항없이 리턴, result = 0
			result = 0;
		}
		return result;
	}

	
	
	// 회원정보 수정 페이지 조회
	@GetMapping("/profile/update")
	public ModelAndView viewUpdateMember(ModelAndView mv,
										  Principal prin) {
		
		String loginId = prin.getName();
		System.out.println("eeeeeeeeeeeeeeeeeeee");
		System.out.println(loginId);
		mv.addObject("memberinfo", mService.selectMypageOne(loginId));
		mv.setViewName("member/profile");
		return mv;
	}
	
	//비밀번호 체크
	@GetMapping("/checkPwd")
	  public boolean checkPassword(Principal prin, 
              @RequestParam String checkPassword ){
		System.out.println("진입");
		String username = prin.getName();
		String currPass = mService.userPass(username);
		System.out.println(checkPassword);
		System.out.println(currPass);
		
		if(passwordEncoder.matches(checkPassword, currPass)) {
			System.out.println("hhhhh");
			return true;
		} else {
			System.out.println("iiiiiiiiiii");
			return false;
		}
		
		}
	
	
	// 회원정보 수정 / Put, Patch
	@PostMapping("/update")
	public String updateMember(ModelAndView mv, @RequestBody MemberUpdateInfoRespDto data, Principal prin) {
		
		Map<String, Object> result = new HashMap<String,Object>();
		
		System.out.println("ggggggggggggggggggggg컨트롤러 ");
		String loginId = prin.getName();
		
		
		mv.addObject("memberinfo", mService.updateInfo(data));
		result.put("memberinfo", mService.updateInfo(data));
		
		
		System.out.println(result);
		
		return new Gson().toJson(result);
	}

	
	 
	
	
	@DeleteMapping("/profile")
	public int deleteMember(@PathVariable String username) {
		// 회원탈퇴 / DeleteMapping
		System.out.println(username);
		int result = mService.deleteMember(username);
		System.out.println(result);
		return result;
	}
	

	
	/*
	 * @ExceptionHandler(Exception.class) public ModelAndView
	 * memberExceptionHandler(Exception e 오류발생함 ModelAndView mv ) {
	 * e.printStackTrace();
	 * 
	 * ModelAndView mv = new ModelAndView(); mv.addObject("msg", e.getMessage() +
	 * "오류가       발생했습니다. 다시 시도해주세요."); mv.setViewName("error/error500");
	 * 
	 * return mv; }
	 */
	
}

