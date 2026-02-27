package com.spring.springbootday4_Jpa_crud.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.springbootday4_Jpa_crud.model.Student;

@Repository
public interface StudentRepo extends JpaRepository<Student, Integer>  {

	public List<Student> findByUsernameAndPassword(String uname, String pass);
    
	
	@Transactional
	@Modifying
	@Query(value="delete from student where rollno =?1",nativeQuery = true)
	public void deleteStudent(int rollno);

	

}
