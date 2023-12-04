package com.entity;

public class Student {
	private int id;
	private String fullname;
	private String studentid;
	private String dob;
	private String phone;
	private String course;
	private String branch;
	private String email;
	private String password;
	
	public Student() {
		super();
	}
	
	public Student(String fullname,String studentid,String dob,String phone,String course,String branch,String email, String password) {
		super();
		this.fullname=fullname;
		this.studentid=studentid;
		this.dob=dob;
		this.phone=phone;
		this.course=course;
		this.branch=branch;
		this.email = email;
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getStudentid() {
		return studentid;
	}
	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}

	
	
	
}
