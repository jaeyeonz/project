package cookking4.controller;

import java.io.IOException;
import java.util.List;

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
		String summary = request.getParameter("summary");
		String name = request.getParameter("name");
		RecipeDAO dao = new RecipeDAO();
		
		System.out.println(recipeNum + " : " + name + " : " + summary );
		
		List<RecipeVO> detailResult = dao.recipeDetail(recipeNum);
				
		if(detailResult != null ) {
			request.setAttribute("detailVO", detailResult);
			request.setAttribute("name", name);
			request.setAttribute("summary", summary);
			request.setAttribute("recipeNum", recipeNum);
			RequestDispatcher rd = request.getRequestDispatcher("recipeDetail.jsp");
			rd.forward(request, response);
		}
	}

}
