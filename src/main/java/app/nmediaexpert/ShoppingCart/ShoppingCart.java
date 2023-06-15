package app.nmediaexpert.ShoppingCart;

import java.io.IOException;
import java.util.List;

import app.nmediaexpert.api.PhoneBasicInfo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ShoppingCart")
public class ShoppingCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PhoneBasicInfo> phonesToBasket = ShoppingCartController.phonesToBasket;
        phonesToBasket.removeIf(phoneBasicInfo -> phoneBasicInfo.getIdPhone() ==  Integer.parseInt(request.getParameter("removeFromBasket")));
        if(phonesToBasket.isEmpty()){
            request.getRequestDispatcher("/").forward(request ,response);
        }
        else {
            request.getRequestDispatcher("/cart").forward(request ,response);
        }
    }
}