package cookking4.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cookking4.model.PriceDAO;
import cookking4.model.PriceVO;
import cookking4.model.RecipeDAO;
import cookking4.model.RecipeVO;

@WebServlet("/PriceList")
public class PriceList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String ingr_name = request.getParameter("ingr_name");
		String price = request.getParameter("price");
		String price_100 = request.getParameter("price_100");

		System.out.println("들어왔어?");
		PriceDAO dao = new PriceDAO();

		List<PriceVO> list1 = dao.EmartList();
		List<PriceVO> list2 = dao.LotteList();
		List<PriceVO> list3 = dao.HomeList();

		if (list1 != null && list2 != null && list3 != null ) {
			
				request.setAttribute("list1", list1);
				request.setAttribute("list2", list2);
				request.setAttribute("list3", list3);
				RequestDispatcher rd = request.getRequestDispatcher("PriceSearch.jsp");
				rd.forward(request, response);
			
		}
	}

}
