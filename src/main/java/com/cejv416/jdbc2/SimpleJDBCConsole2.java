package com.cejv416.jdbc2;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Retrieve the data and the data types and display on the console
 *
 * @author Ken Fogel
 */
public class SimpleJDBCConsole2 {

    private static final Logger LOG = Logger.getLogger(SimpleJDBCConsole2.class.getName());
    
    /**
     * Retrieves all the fish data
     */
    public void perform() {
        System.out.println("SimpleJDBCConsole2");
        var fishDAO = new FishDAO_02();
        String data = null;
        try {
            data = fishDAO.retrieveData();
        }   catch (SQLException ex) {
            LOG.log(Level.SEVERE, "SQLException\n{0}", ex.getMessage());
            // There is no recovery from this error so end the program
            System.exit(1);
        }
        
        if (data.equals("")) {
            System.out.println("No records found.");
        } else 
            System.out.println(data);
    }

    /**
     * Where it all begins
     *
     * @param args
     */
    public static void main(String[] args) {
        new SimpleJDBCConsole2().perform();
        System.exit(0);
    }
}
