/**
 * This class provides the functionality to: <ul> <li>1) Open a database <li>2)
 * Retrieve a specific record based on the primary key and return it as an
 * object <li>3) Close the database </ul>
 *
 * @author Ken Fogel
 * @version 1.3
 */
package com.cejv416.jdbc4;

import com.cejv416.data.FishData;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

class FishDAO_04 {

    private final static String URL = "jdbc:mysql://localhost:3306/AQUARIUM?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true";
    private final static String USER = "fish";
    private final static String PASSWORD = "kfstandard";

    /**
     * Retrieve a specific record based on the primary key
     *
     * @param primaryKey
     * @return A FishData object
     */
    public FishData getIdQueryRecord(int primaryKey) throws SQLException {

        var sql = "Select * from FISH where ID = ?";
        FishData fishData = null;
        try ( // First try-with-resources to connect to the database and create a PreparedStatement
                Connection connection = DriverManager.getConnection(URL, USER, PASSWORD); 
                PreparedStatement pStatement = connection.prepareStatement(sql)) {
            pStatement.setLong(1, primaryKey);
            
            try (// Second try-with-resources to execute the query
                    ResultSet resultSet = pStatement.executeQuery()) {
                // A Primary Key can only result in one record or no records 
                if (resultSet.next()) {
                    fishData = makeFishData(resultSet);
                }
            }
        } 
        return fishData;
    }

    /**
     * Method that extracts the data from the ResultSet and creates a bean
     *
     * @param resultSet
     * @return A FishData bean
     * @throws SQLException
     */
    private FishData makeFishData(ResultSet resultSet) throws SQLException {
        var fishData = new FishData(
                resultSet.getInt("ID"),
                resultSet.getString("COMMONNAME"),
                resultSet.getString("LATIN"),
                resultSet.getString("PH"),
                resultSet.getString("KH"),
                resultSet.getString("TEMP"),
                resultSet.getString("FISHSIZE"),
                resultSet.getString("SPECIESORIGIN"),
                resultSet.getString("TANKSIZE"),
                resultSet.getString("STOCKING"),
                resultSet.getString("DIET"));
        return fishData;
    }
}
