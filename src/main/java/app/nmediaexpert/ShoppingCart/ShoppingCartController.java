package app.nmediaexpert.ShoppingCart;

import app.nmediaexpert.api.PhoneBasicInfo;
import app.nmediaexpert.config.PhoneService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cart")
public class ShoppingCartController extends HttpServlet {
    PhoneService phoneService = new PhoneService();
    List<PhoneBasicInfo> allPhone = phoneService.findAll();
    public static List<PhoneBasicInfo> phonesToBasket = new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Integer> list = (List<Integer>) session.getAttribute("list");
        if(list == null) {
            request.getRequestDispatcher("/").forward(request,response);
        }
        else {
            addToBasketList(list);
            request.setAttribute("phoneToBasket", phonesToBasket);
            session.setAttribute("phoneInBasket" ,phonesToBasket);
            request.getRequestDispatcher("/shoppingBasket.jsp").forward(request,response);
        }
    }
//    point

    private void addToBasketList(List<Integer> list) {
        for (Integer phoneInBasketId : list) {
            for (PhoneBasicInfo phoneBasicInfo : allPhone) {
                if(phoneInBasketId == phoneBasicInfo.getIdPhone()) {
                    if(!phonesToBasket.contains(phoneBasicInfo)){
                        phonesToBasket.add(phoneBasicInfo);
                    }
                }
            }
        }
        list.clear();
    }
}
