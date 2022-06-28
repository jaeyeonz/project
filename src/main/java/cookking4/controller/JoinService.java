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
		String prfr_Ingr1 = request.getParameter("prfr_Ingr1");
		String prfr_Ingr2 = request.getParameter("prfr_Ingr2");
		String prfr_Ingr3 = request.getParameter("prfr_Ingr3");
		
		VO mvo = new VO();
		
		mvo.setLog_id(Log_id);
		mvo.setPw(pw);
		mvo.setName(name);
		mvo.setPrfr_Ingr1(prfr_Ingr1);
		mvo.setPrfr_Ingr2(prfr_Ingr2);
		mvo.setPrfr_Ingr3(prfr_Ingr3);
		
		DAO dao = new DAO();
		
		int cnt = dao.SignupInsert(mvo);
		
		if(cnt > 0) {
			request.setAttribute("mvo",  mvo);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}		
	}

}
