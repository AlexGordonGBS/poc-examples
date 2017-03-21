package com.alex.gordon.poc.restapi;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloResource {
	
	@RequestMapping("/greeting/{greetingText}")
	public String getGreeting(@PathVariable String greetingText) {
		return "Greeting from SpringBoot for: " + greetingText;
	}


}
