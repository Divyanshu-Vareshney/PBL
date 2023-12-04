package com.student.servlet;

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

@WebServlet("/studentLog")
public class studentLog extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			HttpSession session=req.getSession();
			
			Studentdao dao=new Studentdao(DBConnect.getConn());
			Student student=dao.login(email, password);
			
			
			if(student !=null) {
				session.setAttribute("studentObj", student);
				resp.sendRedirect("final.jsp");
			}else {
				session.setAttribute("errMsg","Invalid credentials");
				resp.sendRedirect("Student_login.jsp");
			}

	}
	

}
