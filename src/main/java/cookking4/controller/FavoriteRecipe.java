package cookking4.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cookking4.model.FavoriteVO;
import cookking4.model.RecipeDAO;

@WebServlet("/FavoriteRecipe")
public class FavoriteRecipe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String member_id = request.getParameter("userId");
		
		RecipeDAO dao = new RecipeDAO();
		
		System.out.println(member_id);
		List<FavoriteVO> memberfav = dao.favoriteSelect(member_id);
		request.setAttribute("FavoriteVO", memberfav);
		
		if(memberfav != null ) {			
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
		}
		
		
        
	}

}
