package com.timesheet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("eid");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String mid = request.getParameter("mid");
		int wTime = Integer.parseInt(request.getParameter("wTime"));
		String wDes = request.getParameter("wDes");
		
		boolean isTrue;
		
		isTrue = TimeDBUtil.updateTime(id, email, name, mid, wTime, wDes);
			
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	
	}

}
