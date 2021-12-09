package org.zerock.controller.p01controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cont01")
public class Controller01 {
	
	@RequestMapping("")
	public void method00() {
		System.out.println("메소드00 일함~");
	}
	
	
	@RequestMapping("/met01")
	public void method01() {
		System.out.println("메소드01 일함");
	}

	@RequestMapping("/met02")
	public void method02() {
		System.out.println("메소드02 일했어요!!!");
	}
	
	@RequestMapping({"/met03", "/met04"}) 
	public void method04() {
		System.out.println("메소드03 일함");
	}
	
	@RequestMapping({"/met05", "/met06"})
	public void method05() {
		System.out.println("메소드05 일함");
	}
}
