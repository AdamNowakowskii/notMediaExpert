package Category;

import app.nmediaexpert.api.CategoryInfo;
import app.nmediaexpert.config.DataSourceProvider;

import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    private final DataSource dataSource;

    public CategoryDAO() {
        try {
            this.dataSource = DataSourceProvider.getDataSource();
        } catch (NamingException e) {
            throw new RuntimeException(e);
        }
    }
    public List<CategoryInfo> findAll () {
        final String query = """
    SELECT
            id,categoryName
        FROM
            category
    """;
        try(Connection connection = dataSource.getConnection();
            Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery(query);
            List<CategoryInfo> allCategory = new ArrayList<>();
            while (resultSet.next()) {
                CategoryInfo categoryInfo = mapRow(resultSet);
                allCategory.add(categoryInfo);
            }
            return allCategory;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    private static CategoryInfo mapRow (ResultSet resultSet) throws SQLException {
        int id = resultSet.getInt("id");
        String categoryName = resultSet.getString("categoryName");
        return new CategoryInfo(id,categoryName);
    }
}
