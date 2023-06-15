package app.nmediaexpert.api;

import app.nmediaexpert.User.User;
import app.nmediaexpert.User.UserDAO;

public class UserService {
    private final UserDAO userDAO = new UserDAO();

    public void register (UserRegistration userRegistration){
        User saveUser = UserMapper.map(userRegistration);
        userDAO.save(saveUser);
    }

    private static class UserMapper {
        static User map (UserRegistration userRegistration) {
            return  new User(
                    userRegistration.getFirstName(),
                    userRegistration.getLastName(),
                    userRegistration.getEmail(),
                    userRegistration.getPassword()
            );
        }
    }
}
