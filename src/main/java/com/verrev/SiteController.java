package com.verrev;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SiteController {
	private static User user = new User("a", "b", "a@b.c");

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getLoginPage(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String getLoginPagePost(ModelMap model, @RequestParam("username") String username,  @RequestParam("password") String password) {
		if (username.equals(user.getUserName()) && password.equals(user.getPassword())) return "get-messages";
		return "login";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegisterPage(ModelMap model) {
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String getRegisterPagePost(ModelMap model,
                                      @RequestParam("username") String username,
                                      @RequestParam("username") String password,
                                      @RequestParam("email") String email) {
		user.setUserName(username);
		user.setPassword(password);
        user.setEmail(email);
		return "login";
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String getMainPage(ModelMap model) {
		model.addAttribute("messages", user.getMessages());
		return "get-messages";
	}

	@RequestMapping(value = "/main", method = RequestMethod.POST)
	public String getMainPagePost(ModelMap model, @RequestParam("message") String message) {
		user.addMessage(message);
        model.addAttribute("messages", user.getMessages());
        return "get-messages";
	}
}