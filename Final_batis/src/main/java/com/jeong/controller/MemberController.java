package com.jeong.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jeong.dao.MemberDAO;
import com.jeong.model.MemberDTO;

@WebServlet("/MemberController") //This is very important
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	MemberDAO MemberDAO ;
    public MemberController() {
        this.MemberDAO = new MemberDAO();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		System.out.println("user ID = "+id);
		
		//MemberDTO newUser = MemberDAO.getMemberById((id));
		//System.out.println(newUser);
		
		//request.setAttribute("user", newUser);
		RequestDispatcher view = request.getRequestDispatcher("showUser.jsp");
		view.forward(request, response);
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}