package app.nmediaexpert.ShoppingCart;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/addToCart")
public class CartManagementController extends HttpServlet {
    private final List<Integer> list = new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int phoneToShoppingCard = createPhoneToShoppingCard(request);
        if (!list.contains(phoneToShoppingCard)) {
            list.add(createPhoneToShoppingCard(request));
            HttpSession session = request.getSession();
            session.setAttribute("list", list);
        }
        request.getRequestDispatcher("").forward(request,response);
    }


    private  int createPhoneToShoppingCard (HttpServletRequest request) {
        String submit = request.getParameter("addToShoppingBasket");
        return (Integer.parseInt(submit));
    }
}
