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

// 회원가입 서비스

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String Log_id = request.getParameter("Log_id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String favIndr1 = request.getParameter("favIndr1");
		String favIndr2 = request.getParameter("favIndr2");
		String favIndr3 = request.getParameter("favIndr3");
		
		VO mvo = new VO();
		
		mvo.setLog_id(Log_id);
		mvo.setPw(pw);
		mvo.setName(name);
		mvo.setPrfr_Ingr1(favIndr1);
		mvo.setPrfr_Ingr2(favIndr1);
		mvo.setPrfr_Ingr3(favIndr1);
		
		DAO dao = new DAO();
		
		int cnt = dao.SignupInsert(mvo);
		
		if(cnt > 0) {
			request.setAttribute("mvo",  mvo);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}		
	}

}
