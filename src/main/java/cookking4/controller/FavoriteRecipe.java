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

import cookking4.model.FavoriteVO;
import cookking4.model.RecipeDAO;
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

		FavoriteVO fvo = new FavoriteVO();
		fvo.setName(name);
		fvo.setPrfr_Ingr1(prfr_Ingr1);
		fvo.setPrfr_Ingr2(prfr_Ingr2);
		fvo.setPrfr_Ingr3(prfr_Ingr3);
		
		System.out.println(name);
		System.out.println(prfr_Ingr1);
		System.out.println(prfr_Ingr2);
		System.out.println(prfr_Ingr3);
		
		RecipeDAO dao = new RecipeDAO();
		
		List<FavoriteVO> memberfav = dao.favoriteSelect(fvo);
		
		if(memberfav != null ) {
			System.out.println("FavoriteList....");
			System.out.println(memberfav.size());
			System.out.println(memberfav.get(0).getRecipe_name());
			System.out.println(memberfav.get(0).getSummary());
			System.out.println(memberfav.get(0).getA_point());

			HttpSession session = request.getSession();
			session.setAttribute("FavoriteVO", memberfav);

			response.sendRedirect("new_recipe.jsp");
		}
		
		
        
	}

}
