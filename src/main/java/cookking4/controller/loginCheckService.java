package cookking4.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cookking4.model.DAO;
import cookking4.model.VO;

@WebServlet("/loginCheckService")
public class loginCheckService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String Log_id = request.getParameter("Log_id");
		String pw = request.getParameter("pw");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		System.out.println("logincheck : " + Log_id + " " + pw);
		
		VO mvo = new VO();
		mvo.setLog_id(Log_id);
		mvo.setPw(pw);
		
		DAO dao = new DAO();
		
		int loginCheck = dao.checkLogin(mvo);
		
		out.print(loginCheck);
	}

}
