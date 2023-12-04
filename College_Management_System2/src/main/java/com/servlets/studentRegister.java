package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Studentdao;
import com.db.DBConnect;
import com.entity.Student;
@WebServlet("/student_register")
public class studentRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("fullname");
			String studentid=req.getParameter("sid");
			String dob=req.getParameter("dob");
			String phone=req.getParameter("phone");
			String course=req.getParameter("course");
			String branch=req.getParameter("branch");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			Student s= new Student(name,studentid,dob,phone,course,branch,email,password);
			
			Studentdao dao=new Studentdao(DBConnect.getConn());
			
			HttpSession session=req.getSession();
			
			boolean f=dao.StudentRegister(s);
			if(f) {
				session.setAttribute("sucMsg","Register Successfully");
				resp.sendRedirect("signup.jsp");
			}else {
				session.setAttribute("errMsg","Some Error Occured");
				resp.sendRedirect("signup.jsp");
				
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
