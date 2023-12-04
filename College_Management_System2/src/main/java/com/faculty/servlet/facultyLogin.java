package com.faculty.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Student;

@WebServlet("/facultyLogin")
public class facultyLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			HttpSession session=req.getSession();
			
			
			if("faculty@gmail.com".equals(email) && "faculty".equals(password)) {
				session.setAttribute("facultyObj", new Student());
				resp.sendRedirect("faculty/index.jsp");
			}else {
				session.setAttribute("errMsg","Invalid credentials");
				resp.sendRedirect("Faculty_login.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
