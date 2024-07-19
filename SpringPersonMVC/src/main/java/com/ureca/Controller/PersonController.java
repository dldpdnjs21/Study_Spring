package com.ureca.Controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller		//스프링 컨테이너로 객체 관리 받고 싶어요
public class PersonController {
/*
	<컨트롤러의 역할>
	1.요청분석
	2.데이터 얻어오기
	3.모델호출
	4.모델호출 결과를 (영역에)저장
	5.페이지이동 <- 맨 마지막에 정의 :어떻게? 리턴으로
 */
	
	@RequestMapping("/form") //요청URL정의
	public String form(){ //입력폼 보이기
		return "form"; //"WEB-INF/views/" + "form" + ".jsp"	  ==> 5.forward 이동
	}
	
}
