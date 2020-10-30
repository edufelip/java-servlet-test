package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String email = req.getParameter("email");
		
		PrintWriter out = res.getWriter();
		
		HttpSession session = req.getSession();
		//session.setAttribute(arg0, arg1);
		
		out.println(email);
		
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		//req.setAttribute("k", k);
		RequestDispatcher rd = req.getRequestDispatcher("add");
		rd.forward(req, res);
	}
}
