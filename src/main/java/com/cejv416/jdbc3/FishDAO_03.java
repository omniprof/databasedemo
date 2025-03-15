/**
 * This class provides the functionality to: <ul> <li>1) Open a database <li>2)
 * Retrieve all the records from a user query and return them as an ArrayList
 * <li>3) Close the database </ul>
 *
 * @author Ken Fogel
 * @version 1.2
 */
package com.cejv416.jdbc3;

import com.cejv416.data.FishData;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

class FishDAO_03 {

    private final static String URL = "jdbc:mysql://localhost:3306/AQUARIUM?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true";
    private final static String USER = "fish";
    private final static String PASSWORD = "kfstandard";
    
    /**
     * Retrieve all the records for fish with a specific diet
     *
     * @param whereValue The data to search for
     * @return The arraylist of matching fish
     */
    public ArrayList<FishData> getDietQueryRecords(String whereValue) throws SQLException {

        ArrayList<FishData> rows = new ArrayList<>();
        String sql = "Select * from FISH where DIET = ?";
        try ( // First try-with-resources to connect to the database and create a PreparedStatement
                Connection connection = DriverManager.getConnection(URL, USER, PASSWORD); 
                PreparedStatement pStatement = connection.prepareStatement(sql);) {
            pStatement.setString(1, whereValue);
            try ( // Second try-with-resources to execute the query
                    ResultSet resultSet = pStatement.executeQuery()) {
                // Loop thru records and add Fishdata objects to the ArrayList
                while (resultSet.next()) {
                    rows.add(makeFishData(resultSet));
                }
            }
        } 
        return rows;
    }

    /**
     * Method that extracts the data from the ResultSet and creates a FishData
     * objects
     *
     * @param resultSet
     * @return A FishData bean
     * @throws SQLException
     */
    private FishData makeFishData(ResultSet resultSet) throws SQLException {
        FishData fishData = new FishData(
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
