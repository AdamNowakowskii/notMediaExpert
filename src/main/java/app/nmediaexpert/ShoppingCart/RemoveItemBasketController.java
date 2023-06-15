package app.nmediaexpert.ShoppingCart;


import java.io.IOException;
import java.util.List;

import app.nmediaexpert.api.PhoneBasicInfo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/removeFromBasket")
public class RemoveItemBasketController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        removeFromBasket(request);
        request.getRequestDispatcher("/cart").forward(request,response);
    }

    private static void removeFromBasket(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String  removeFromBasket = request.getParameter("removeFromBasket");
        List<PhoneBasicInfo> phoneInBasket = (List<PhoneBasicInfo>) session.getAttribute("phoneInBasket");
        phoneInBasket.removeIf(phoneBasicInfo -> phoneBasicInfo.getIdPhone() == Integer.parseInt(removeFromBasket));
    }
}
