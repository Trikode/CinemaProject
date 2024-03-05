package com.emit.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.emit.bean.User2;
import com.emit.service.UserService2;
import com.emit.dao.UserDAO2;


@Controller
public class UserController {
	UserService2 service = new UserService2();
	//UserDAO2 dao = new UserDAO2();
	 
	@GetMapping("/viewNavbar")
	public String welcome() {
		System.out.println("controllerCheck");
		return "viewNavbar";
	}
	@GetMapping("/viewFormRegister")
	public String register() {
		System.out.println("controllerCheck");
		return "viewFormRegister";
	}
	/*@GetMapping("/homePage")
	public String homePage() {
		System.out.println("controllerCheck");
		return "homePage";
	}*/
	@GetMapping("/usersPage")
	public String usersPage() {
		System.out.println("controllerCheck");
		return "usersPage";
	}
	@GetMapping("/moviePage")
	public String moviePage() {
		System.out.println("controllerCheck");
		return "moviePage";
	}
	@GetMapping("/viewSeatSelector")
	public String seats(HttpSession session) {
		Object user = session.getAttribute("user");
		if (user == null) {
			System.out.println("go to log");
			return"viewLogin";
			}else {
		System.out.println("loged");
		return "viewSeatSelector";}
	}
	@PostMapping("/getRegister")
	public String formLogin(
			@RequestParam("name")String name,
			@RequestParam("lastName")String lastName,
			@RequestParam("email")String email,
			@RequestParam("psw")String psw,
			@RequestParam("pswCheck")String pswCheck,
			Model m) {
		User2 user2 = new User2 (1,name, lastName, email, psw, 2, 0, true); 
		service.create(user2);
		return "viewLogin";
	}
	@GetMapping("/viewLogin")
	public String login() {
		return "viewLogin";
	}
	@GetMapping("/getLogin")
	public String display(
			@RequestParam String email, 
			@RequestParam String password,
			HttpSession session,
			HttpServletRequest request,
			Model m)  
    {  
		ServletContext application = request.getServletContext();
		User2 user =service.getUserByEmail(email);
		if (user == null) {
			System.out.println("user not found");
			m.addAttribute("message", "User not found");
			return "viewLogin";
		}else if(user.getPassword().equals(password)) {
			System.out.println("loggeeeeeeesdddddd");
			//user.setNum_attempts(0);
			//user.setActive(true);
			session = request.getSession();
			session.setAttribute("user", user);
			application.setAttribute("userNameShow", "Ciao  "+ user.getFirst_name());
			application.setAttribute("userId", user.getIdusers());
			application.setAttribute("userN", user.getFirst_name());
			application.setAttribute("userC", user.getLast_name());
			application.setAttribute("userE", user.getEmail());
			application.setAttribute("userP", user.getPassword());
			//m.addAttribute("userNameShow",);
			if(user.getIDRole()== 1) {
				return "aggiungiFilm";
			}
			return "homePage";
		}else{
			//int tentativi = user.getNum_attempts();
			System.out.println("no password");
			m.addAttribute("message", "Password not correct");
			/*tentativi++;
			user.setNum_attempts(tentativi);
			if(tentativi > 4) {
				System.out.println("You reached the maximum tries  ("+ tentativi +"/5), your account"
						+ " will be blocked, please contact the assistance");
				user.setActive(false);
			}else {
				
				System.out.println("Password not correct "
						+ "this your " + tentativi + "/5 try");
			}*/
			return "viewLogin";
			}}
        
      	
	
	  @GetMapping("/logout")
	  public String logout(
			  HttpSession session, 
			  HttpServletRequest request,
			  Model m) {
		  ServletContext application = request.getServletContext();
		  	session.invalidate(); 
		  	application.removeAttribute("userNameShow");
		  	application.removeAttribute("userId");
		  	application.removeAttribute("userN");
			application.removeAttribute("userC");
			application.removeAttribute("userE");
			application.removeAttribute("userP");
	    return "homePage";
	  }
	

	@GetMapping("/profile")
	public String profile() {
		return "viewProfile";
	}
}
