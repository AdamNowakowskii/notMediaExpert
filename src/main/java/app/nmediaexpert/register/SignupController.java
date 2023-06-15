package app.nmediaexpert.register;

import app.nmediaexpert.api.UserRegistration;
import app.nmediaexpert.api.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.io.IOException;
import java.util.Set;

@WebServlet("/register")
public class SignupController extends HttpServlet {
    private final UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/register.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserRegistration userRegister = getUserData(request);
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Validator validator = factory.getValidator();
        Set<ConstraintViolation<UserRegistration>> validate = validator.validate(userRegister);
        if(validate.isEmpty()) {
            userService.register(userRegister);
            response.sendRedirect(request.getContextPath());
        }
        else {
            request.setAttribute("validate" ,validate);
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        }
    }

    private UserRegistration getUserData (HttpServletRequest request) {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        return new UserRegistration(firstName,lastName,email,password);
    }
}
