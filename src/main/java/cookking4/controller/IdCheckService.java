package cookking4.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cookking4.model.DAO;

@WebServlet("/IdCheckService")

public class IdCheckService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		System.out.println("userId는 " + userId);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		DAO dao = new DAO();
		
		int idCheck = dao.checkId(userId);
		
		if(idCheck == 1) {
			System.out.println("con 사용중인 아이디입니다");
//			request.setAttribute("userId", idCheck);
//			RequestDispatcher rd = request.getRequestDispatcher(idCheck);
//			rd.forward(request, response);
		}else if (idCheck == 0) {
			System.out.println("사용 가능한 아이디입니다.");			
		}
		out.write(idCheck);
	}

}
