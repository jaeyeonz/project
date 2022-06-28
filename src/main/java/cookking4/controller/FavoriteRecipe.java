package cookking4.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;

import cookking4.model.FavoriteVO;
import cookking4.model.RecipeDAO;
import cookking4.model.RecipeIdVO;
import cookking4.model.VO;

@WebServlet("/FavoriteRecipe")
public class FavoriteRecipe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String prfr_Ingr1 = request.getParameter("prfr_Ingr1");
		String prfr_Ingr2 = request.getParameter("prfr_Ingr2");
		String prfr_Ingr3 = request.getParameter("prfr_Ingr3");
		
		int recipe_id1 = Integer.parseInt(request.getParameter("recipe_id1")); 
		int recipe_id2 = Integer.parseInt(request.getParameter("recipe_id2")); 
		int recipe_id3 = Integer.parseInt(request.getParameter("recipe_id3")); 
		int recipe_id4 = Integer.parseInt(request.getParameter("recipe_id4")); 
		int recipe_id5 = Integer.parseInt(request.getParameter("recipe_id5")); 

		FavoriteVO fvo = new FavoriteVO();
		fvo.setName(name);
		fvo.setPrfr_Ingr1(prfr_Ingr1);
		fvo.setPrfr_Ingr2(prfr_Ingr2);
		fvo.setPrfr_Ingr3(prfr_Ingr3);

		FavoriteVO svo = new FavoriteVO();
		RecipeIdVO recipe_ids = new RecipeIdVO(recipe_id1, recipe_id2, recipe_id3, recipe_id4, recipe_id5);
		
		RecipeDAO dao = new RecipeDAO();

		// 선호식재료
		List<FavoriteVO> memberfav = dao.favoriteSelect(fvo);
		// 유사도
		List<FavoriteVO> similfav = dao.similist(recipe_ids);
		
		if(memberfav != null ) {
			HttpSession session = request.getSession();
			session.setAttribute("FavoriteVO", memberfav);
			session.setAttribute("SimilVO", similfav);

			response.sendRedirect("recipe.jsp");
		}
		
		
        
	}

}
