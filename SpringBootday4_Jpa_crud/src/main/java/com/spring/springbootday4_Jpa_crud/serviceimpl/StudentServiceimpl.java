package com.spring.springbootday4_Jpa_crud.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.springbootday4_Jpa_crud.Repo.StudentRepo;
import com.spring.springbootday4_Jpa_crud.model.Student;
import com.spring.springbootday4_Jpa_crud.serviceI.StudentserviceI;

@Service
public class StudentServiceimpl implements StudentserviceI {
	
	@Autowired
	StudentRepo sr;

	@Override
	public void save(Student s) {
		sr.save(s);
	}

	@Override
	public List<Student> loginstudent(String uname, String pass) {
	if(uname.equals("ADMIN") && pass.equals("ADMIN")) {
		List<Student> list=(	List<Student>)sr.findAll();
		return list;
	}else {
		List<Student> ls=sr.findByUsernameAndPassword(uname,pass);
		return ls;
	}


	
	}

	@Override
	public List<Student> deleteStudent(int rollno) {
		sr.deleteStudent(rollno);
	
		return sr.findAll();
	}

	
	@Override
	public Student getStudentByRollno(int rollno) {
		
		  return sr.findById(rollno).get();
	}
	@Override
	public List<Student> updateStudent(Student s) {
	    sr.save(s);
		return sr.findAll();
	}



}
