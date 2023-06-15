package app.nmediaexpert;

import Category.CategoryDAO;
import app.nmediaexpert.api.CategoryInfo;
import app.nmediaexpert.api.PhoneBasicInfo;
import app.nmediaexpert.config.PhoneService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet("")
public class HomeController extends HttpServlet {
    private final PhoneService phoneService = new PhoneService();
    private final CategoryDAO categoryDAO = new CategoryDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PhoneBasicInfo> allPhone = phoneService.findAll();
        List<CategoryInfo> allCategory = categoryDAO.findAll();
        request.setAttribute("allCategory" ,allCategory);
        request.setAttribute("allPhone" ,allPhone);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

}
