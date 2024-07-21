
package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.DAO.UserDAO;
import com.project.model.UserVO;



@Controller
public class UserController {
	
	@Autowired UserDAO userdao;

	@GetMapping("admin/users")
	public ModelAndView users() {
		return new ModelAndView("admin/viewUsers", "UserVO", new UserVO());
	}
	
	@PostMapping("admin/userinsert")
	public ModelAndView userinsert(@ModelAttribute UserVO uservo) {
		
		userdao.userinsert(uservo);
		return new ModelAndView("admin/index");
	}
	
}
