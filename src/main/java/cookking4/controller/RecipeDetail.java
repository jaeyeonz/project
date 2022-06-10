package cookking4.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cookking4.model.DAO;
import cookking4.model.RecipeDAO;
import cookking4.model.RecipeVO;
import cookking4.model.VO;

@WebServlet("/RecipeDetail")
public class RecipeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int recipeNum = Integer.parseInt(request.getParameter("recipeNum"));
		
		RecipeDAO dao = new RecipeDAO();
		
		RecipeVO detailResult = dao.detailRecipe(recipeNum);
				
		request.setAttribute("detailVO", detailResult);
		
		// forward 방식으로 이동
		String nextPage = "RecipeDetail.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}

}
