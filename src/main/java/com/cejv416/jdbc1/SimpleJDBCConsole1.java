package com.cejv416.jdbc1;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Retrieve the data and display on the console
 *
 * @author Ken Fogel
 */
public class SimpleJDBCConsole1 {
    
    private static final Logger LOG = Logger.getLogger(SimpleJDBCConsole1.class.getName());
    
    /**
     * Retrieves all the fish records in a string and
     * displays them.
     */
    public void perform() {
        System.out.println("SimpleJDBCConsole1");
        var fishDAO = new FishDAO_01();
        String data = null;
        try {
            data = fishDAO.retrieveData();
        }  catch (SQLException ex) {
            LOG.log(Level.SEVERE, "SQLException\n{0}", ex.getMessage());
            // There is no recovery from this error so end the program
            System.exit(1);
        }
        if (data == null) {
            System.out.println("No records found.");
        } else
            System.out.println(data);
    }

    /**
     * Where it begins
     *
     * @param args
     */
    public static void main(String[] args) {
        new SimpleJDBCConsole1().perform();
        System.exit(0);

    }

}
