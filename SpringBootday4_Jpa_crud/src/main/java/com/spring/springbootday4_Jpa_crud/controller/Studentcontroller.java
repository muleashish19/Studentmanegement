package com.spring.springbootday4_Jpa_crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.spring.springbootday4_Jpa_crud.SpringBootday4JpaCrudApplication;
import com.spring.springbootday4_Jpa_crud.model.Student;
import com.spring.springbootday4_Jpa_crud.serviceI.StudentserviceI;

@Controller
public class Studentcontroller {

    private final SpringBootday4JpaCrudApplication springBootday4JpaCrudApplication;
	
	@Autowired
	StudentserviceI ssi;


    Studentcontroller(SpringBootday4JpaCrudApplication springBootday4JpaCrudApplication) {
        this.springBootday4JpaCrudApplication = springBootday4JpaCrudApplication;
    }
	


	
	@RequestMapping("/")
	public String prelogin() {
		return "login";
	}
	
	@RequestMapping("/log")
	public String login(@RequestParam("username") String uname,@RequestParam("password") String pass,Model m) {
		
		
//		m.addAttribute("data1", uname);
//		m.addAttribute("data2", pass);
		System.out.println(uname +" "+pass);
		
List<Student> list= ssi.loginstudent(uname,pass);
if(!list.isEmpty()) {
	m.addAttribute("data", list);
	return "success";
}else {
	m.addAttribute("data", "username and not match");
	
}
return "login";
	
	}
	@RequestMapping("/openregisterpage")
	public String preregister() {
		return"register";
	}
	
	@RequestMapping("/savestu")
	public String register(@ModelAttribute Student s,Model m) {
		
		ssi.save(s);
		m.addAttribute("data", s);
		System.out.println(s.getName());
		System.out.println(s.getUsername());
		System.out.println(s.getPassword());
		return"afterregister";
	}
	
	
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam("rollno") int rollno, Model m ) {
		
		
        List<Student>list = ssi.deleteStudent(rollno);
        m.addAttribute("data", list);
		return "success";
		
	}
	@RequestMapping("/edit")
	public String editStudent(@RequestParam("rollno") int rollno, Model m) {

	    Student s = ssi.getStudentByRollno(rollno);
	    m.addAttribute("stu", s);
	    return "update";
	}
	
	
	
	@RequestMapping("/update")
	public String updateStudent(@ModelAttribute Student s, Model m) {

	    List<Student> list = ssi.updateStudent(s);
	    m.addAttribute("data", list);
	    return "success";
	}

}
