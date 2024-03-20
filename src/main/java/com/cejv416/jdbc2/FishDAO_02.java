package com.cejv416.jdbc2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

/**
 * This class provides the functionality to: <ul> <li>1) Open a database <li>2)
 * Retrieve all the records from a user query <li>3) Display all the records
 * using the ResultSetMetaData to show the data type of each field
 * <li>3) Close the database </ul>
 *
 * @author Ken Fogel
 * @version 1.3
 */
public class FishDAO_02 {

    private final static String URL = "jdbc:mysql://localhost:3306/AQUARIUM?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true";
    private final static String USER = "fish";
    private final static String PASSWORD = "kfstandard";
    
    /**
     * Retrieve all the fish records including the data type and append the
     * results to a String
     *
     * @return A string containing all the fish records
     * @throws java.sql.SQLException
     */
    public String retrieveData() throws SQLException {
        // StringBuilder is a mutable String
        var sb = new StringBuilder();
        var query = "SELECT * FROM FISH";
        try (
                Connection connection = DriverManager.getConnection(URL, USER, PASSWORD); 
                PreparedStatement pStatement = connection.prepareStatement(query); 
                ResultSet resultSet = pStatement.executeQuery()) {
            // Meta data is data about data. In this case it is the number of columns
            ResultSetMetaData rsmd = resultSet.getMetaData();
            // Loop thru every record
            while (resultSet.next()) {
                // Loop thru each field in a record and append the field value and data type to a String
                for (int i = 1; i <= rsmd.getColumnCount(); ++i) {
                    sb.append(rsmd.getColumnClassName(i)).append("--> ").append(resultSet.getString(i)).append("\n");
                }
                sb.append("====================\n");
            }
        }
        return sb.toString();
    }
}
