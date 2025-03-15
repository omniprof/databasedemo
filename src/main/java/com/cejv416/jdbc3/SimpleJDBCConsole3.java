package com.cejv416.jdbc3;

import com.cejv416.data.FishData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Retrieve the data and display on the console
 *
 * @author Ken Fogel
 */
public class SimpleJDBCConsole3 {

    private static final Logger LOG = Logger.getLogger(SimpleJDBCConsole3.class.getName());

    /**
     * Get the Carnivore fish and display them
     */
    public void perform() {
        System.out.println("SimpleJDBCConsole3");
        var fishDAO = new FishDAO_03();
        ArrayList<FishData> data = null;
        try {
            data = fishDAO.getDietQueryRecords("Carnivore");
        } catch (SQLException ex) {
            LOG.log(Level.SEVERE, "SQLException\n{0}", ex.getMessage());
            // There is no recovery from this error so end the program
            System.exit(1);
        }
        var sb = new StringBuilder();

        // For each record add each field to a String
        if (data != null) {
            for (FishData fd : data) {
                sb.append(fd.toString()).append("\n");
            }
            System.out.println(sb.toString());
        } else {
            System.out.println("No records found.");
        }
    }

    /**
     * Where it all begins
     *
     * @param args
     */
    public static void main(String[] args) {
        new SimpleJDBCConsole3().perform();
        System.exit(0);
    }
}
