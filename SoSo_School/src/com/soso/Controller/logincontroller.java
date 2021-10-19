package com.soso.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.soso.login.Dao.UserDao;
import com.soso.login.Dto.UserDto;

@WebServlet("/logincontroller")
public class logincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String command = request.getParameter("command");
		System.out.println("["+command+"]");
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		UserDao dao = new UserDao();
		
		if(command.equals("login")) {
			String id = request.getParameter("userId");
			String pw = request.getParameter("userPassword");
			
			UserDto dto = dao.login(id, pw);
			session.setAttribute("dto", dto);
			session.setMaxInactiveInterval(60*60);
			
			if(dto.getUser_id() != null) {
				//유저 로그인 시 ( *관리자 로그인 시 구현 필요)
				if(dto.getUser_type().equals("USER")) {
					response.sendRedirect("4.jsp");
				}
			//id , pw 잘못 입력 했을떄
			}else{ 
				out.println("<script>alert('아이디 또는 비밀번호를 다시 확인해주세요.'); location.href='2.jsp';</script>");
			}
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
