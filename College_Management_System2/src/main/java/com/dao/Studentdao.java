package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Student;

public class Studentdao {
	private Connection conn;

	public Studentdao(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean StudentRegister(Student s)
	{
		boolean f=false;
		try {
			String sql="insert into student(name,studentid,dob,phone,course,branch,email,password)values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, s.getFullname());
			ps.setString(2, s.getStudentid());
			ps.setString(3,s.getDob());
			ps.setString(4,s.getPhone());
			ps.setString(5, s.getCourse());
			
			ps.setString(6,s.getBranch());
			
			ps.setString(7,s.getEmail());
			ps.setString(8,s.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
public Student login(String em,String psw) {
	Student s=null;
	try {
		String sql="select * from student where email=? and password=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, em);
		ps.setString(2,psw);
		
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			s=new Student();
			s.setId(rs.getInt(1));
			s.setFullname(rs.getString(2));
			s.setEmail(rs.getString(8));
			s.setPassword(rs.getString(9));
			s.setCourse(rs.getString(6));
			s.setBranch(rs.getString(7));
			s.setDob(rs.getString(3));
			s.setPhone(rs.getString(4));
		
		}
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return s;
}

}
