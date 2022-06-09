package cookking4.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cookking4.model.DAO;
import cookking4.model.VO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String favIndr1 = request.getParameter("favIndr1");
		String favIndr2 = request.getParameter("favIndr2");
		String favIndr3 = request.getParameter("favIndr3");
		
		System.out.println(userId);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(favIndr1);
		System.out.println(favIndr2);
		System.out.println(favIndr3);
		
		VO mvo = new VO();
		
		mvo.setUserId(userId);
		mvo.setPw(pw);
		mvo.setName(name);
		mvo.setFavIndr1(favIndr1);
		mvo.setFavIndr2(favIndr1);
		mvo.setFavIndr3(favIndr1);
		
		DAO dao = new DAO();
		
		int cnt = dao.SignupInsert(mvo);
		
		if(cnt > 0) {
			request.setAttribute("mvo",  mvo);
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			rd.forward(request, response);
		}		
	}

}
