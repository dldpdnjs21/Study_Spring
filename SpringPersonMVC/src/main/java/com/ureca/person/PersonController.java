package com.ureca.person;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;

@Controller //스프링 컨테이너로 객체 관리 받고 싶어요!!
@RequestMapping("/person")
public class PersonController {
/*
<컨트롤러의 역할>
1.요청분석
2.데이터 얻어오기
3.모델호출
4.모델호출 결과를 (영역에)저장
5.페이지이동 ◀ 맨 마지막에 정의 :어떻게? 리턴으로
 */
	
	@RequestMapping("/form") //요청URL정의   ==>1.
	public String form() {//입력폼 보이기
	  return "form";  //  "/WEB-INF/views/"+ "form"  + ".jsp"    ==> 5. forward이동	
	}
	
	@RequestMapping("/regist") //요청URL정의   ==>1.
//	public String regist(HttpServletRequest request) {//DB입력
	public String regist(@RequestParam("name")String name,
			             @RequestParam("age")int age,
			             @RequestParam("job")String job
                        ) {//DB입력
		System.out.println("name>>>"+ name);
		
		return "list";  // 5.	
	}
	
	
	
	
}





