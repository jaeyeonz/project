package cookking4.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cookking4.model.RecipeDAO;
import cookking4.model.RecipeVO;

@WebServlet("/reviewPoint")
public class reviewPoint extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");		
		
		
		int recipe_id = Integer.parseInt(request.getParameter("recipeNum")); 
		int a_point = Integer.parseInt(request.getParameter("reviewStar"));
		String recipe_name = request.getParameter("name");
		String summary = request.getParameter("summary");	 		
		
		System.out.println(recipe_id + " : " + a_point + " : " + recipe_name + " : " + summary );
		
		RecipeVO pointVO = new RecipeVO(); 
		pointVO.setRecipe_id(recipe_id); 
		pointVO.setA_point(a_point);
		pointVO.setRecipe_name(recipe_name);
		pointVO.setSummary(summary);
		
		RecipeDAO dao = new RecipeDAO();	
		int pointResult = dao.reviewPoint(pointVO);				
				
		if(pointResult > 0 ) {
			System.out.println(pointResult);
			request.setAttribute("name", recipe_name);
			request.setAttribute("summary", summary);
			request.setAttribute("recipeNum", recipe_id);	
			
			RequestDispatcher rd = request.getRequestDispatcher("RecipeDetail");
			rd.forward(request, response);
		}
	}

}
