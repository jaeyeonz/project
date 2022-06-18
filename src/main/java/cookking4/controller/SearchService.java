package cookking4.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cookking4.model.RecipeDAO;
import cookking4.model.RecipeVO;

@WebServlet("/SearchService")
public class SearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String keyword = request.getParameter("keyword");
		System.out.println("잘 넘어가니?");
		System.out.println(keyword);
		RecipeDAO dao = new RecipeDAO();
		List<RecipeVO> list = null;
		if(keyword == null) {
			list = dao.recipeList();
		}else {
			list = dao.recipeSearchList(keyword);
		}

		if(list != null) {
			HttpSession session = request.getSession();
			session.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("recipe.jsp");
			rd.forward(request, response);
		}		
	
	
	
	}

}
