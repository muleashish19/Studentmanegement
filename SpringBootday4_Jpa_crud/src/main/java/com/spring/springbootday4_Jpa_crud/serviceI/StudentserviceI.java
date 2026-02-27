package com.spring.springbootday4_Jpa_crud.serviceI;

import java.util.List;

import com.spring.springbootday4_Jpa_crud.model.Student;

public interface StudentserviceI {

	void save(Student s);

	 public List<Student> loginstudent(String uname, String pass);

	 public List<Student> deleteStudent(int rollno);

	 

	public  Student getStudentByRollno(int rollno);
	public  List<Student> updateStudent(Student s);


}
