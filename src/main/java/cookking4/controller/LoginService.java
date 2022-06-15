package cookking4.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cookking4.model.DAO;
import cookking4.model.VO;

// 로그인 서비스

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String pw = request.getParameter("pw");
		
		System.out.println(userId + " : " + pw);
		VO mvo = new VO();
		mvo.setUserId(userId);
		mvo.setPw(pw);

		DAO dao = new DAO();
		VO result = dao.Login(mvo);
		System.out.println(result.getFavIndr1());
		System.out.println(result.getFavIndr2());
		System.out.println(result.getFavIndr3());
		
		if(result == null) {
			System.out.println("로그인 실패");
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("mvo", result);
		}
		response.sendRedirect("Home.jsp");		
	}

}
