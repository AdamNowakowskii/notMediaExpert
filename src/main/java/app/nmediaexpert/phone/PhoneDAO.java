package app.nmediaexpert.phone;

import app.nmediaexpert.config.DataSourceProvider;

import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PhoneDAO {
    private final DataSource dataSource;
    public PhoneDAO() {
        try {
            try {
                this.dataSource = DataSourceProvider.getDataSource();
            } catch (NamingException e) {
                throw new RuntimeException(e);
            }

        } catch (RuntimeException e) {
            throw new RuntimeException(e);
        }
    }
    public List<Phone> findAll () {
        final String query = """
    SELECT
            id,description,idPhone,phoneUrl,screen,battery,ram,phonePrice ,phoneCategory,phoneName
        FROM
            phone
    """;
        try(Connection connection= dataSource.getConnection();
            Statement statement = connection.createStatement()){
            ResultSet resultSet = statement.executeQuery(query);
            List<Phone> allPhone = new ArrayList<>();
            while (resultSet.next()) {
                Phone phone = mapRow(resultSet);
                allPhone.add(phone);
            }
            return allPhone;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private static Phone mapRow(ResultSet resultSet) throws SQLException {
        int id = resultSet.getInt("id");
        String description = resultSet.getString("description");
        int idPhone = resultSet.getInt("idPhone");
        String phoneUrl = resultSet.getString("phoneUrl");
        String screen = resultSet.getString("screen");
        String battery = resultSet.getString("battery");
        String ram = resultSet.getString("ram");
        int phonePrice = resultSet.getInt("phonePrice");
        String phoneCategory = resultSet.getString("phoneCategory");
        String phoneName = resultSet.getString("phoneName");
        return new Phone(id,description,idPhone,phoneUrl,screen,battery,ram,phonePrice,phoneCategory,phoneName);
    }
}
