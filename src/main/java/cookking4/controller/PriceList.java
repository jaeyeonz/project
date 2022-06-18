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

		String ingr_info_irdnt_nm = request.getParameter("ingr_info_irdnt_nm");

		System.out.println("들어왔어?");
		System.out.println(ingr_info_irdnt_nm);
		PriceDAO dao = new PriceDAO();

		
		  List<PriceVO> list1 = dao.EmartList(ingr_info_irdnt_nm); 
		  List<PriceVO> list2 = dao.LotteList(ingr_info_irdnt_nm); 
		  List<PriceVO> list3 = dao.HomeList(ingr_info_irdnt_nm);
		 
		  if(list1.size()!=0) {
		  System.out.println("emart"+list1.get(0).getPrice_100());} if(list2.size()!=0)
		  { System.out.println("lotte"+list2.get(0).getPrice_100());}
		  if(list3.size()!=0) {
		  System.out.println("home"+list3.get(0).getPrice_100());}
		 
		
		if (list1 != null && list2 != null && list3 != null) {
				request.setAttribute("idFind", ingr_info_irdnt_nm);
				request.setAttribute("list1", list1);
				request.setAttribute("list2", list2);
				request.setAttribute("list3", list3);
				RequestDispatcher rd = request.getRequestDispatcher("priceSearch.jsp");
				rd.forward(request, response);
			
		}
	
	}

}
