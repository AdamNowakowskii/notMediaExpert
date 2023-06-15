package app.nmediaexpert.User;

import app.nmediaexpert.config.DataSourceProvider;

import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;

public class UserDAO {
    private final DataSource dataSource;

    public UserDAO() {
        try {
            this.dataSource = DataSourceProvider.getDataSource();
        } catch (NamingException e) {
            throw new RuntimeException(e);
        }
    }

    public void save (User user) {
        saveUser(user);
        saveUserRole(user);
    }

    private void saveUser(User user) {
        final String query = """
                INSERT INTO
                    user(firstName,lastName,email ,password) 
                VALUES
                (?,?,?,?)
                """;
        try (Connection connection = dataSource.getConnection();
             PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)){
          statement.setString(1,user.getFirstName());
          statement.setString(2,user.getLastName());
          statement.setString(3,user.getEmail());
          statement.setString(4,user.getPassword());
          statement.executeUpdate();
            ResultSet generatedKeys = statement.getGeneratedKeys();
            if(generatedKeys.next()) {
                user.setId(generatedKeys.getInt(1));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    private void saveUserRole(User user) {
        final String query = """
                INSERT INTO 
                    user_role(email)
                VALUES
                    (?)
                """;
        try(Connection connection = dataSource.getConnection();
            PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, user.getEmail());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

}
