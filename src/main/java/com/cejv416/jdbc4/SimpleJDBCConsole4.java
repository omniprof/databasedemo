package com.cejv416.jdbc4;

import com.cejv416.data.FishData;
import java.sql.SQLException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Retrieve the data and display on the console
 *
 * @author Ken Fogel
 */
public class SimpleJDBCConsole4 {

    private final Scanner sc;
    private static final Logger LOG = Logger.getLogger(SimpleJDBCConsole4.class.getName());

    /**
     * Constructor
     */
    public SimpleJDBCConsole4() {
        sc = new Scanner(System.in);
    }

    /**
     * Input Ask the user for a fish ID, rejecting non numeric input
     *
     * @return The fish ID value
     */
    public int requestFishID() {
        // Declaration
        int fishID = -1;

        do {
            System.out.println("Please enter a fish ID: ");
            // Check if there is an integer waiting in the buffer
            if (sc.hasNextInt()) {
                // There is so get it
                fishID = sc.nextInt();
            } else {
                // Invalid input so set fishID to -1
                fishID = -1;
                System.out.println("I'm sorry, your input was invalid.");
                System.out.println("Please enter a fish ID: : ");
            }
            // Clean out invalid characters
            sc.nextLine();
        // Loop continues while a fishID equals -1    
        } while (fishID == -1);

        return fishID;
    }

    /**
     * Get the fish with the specified ID and display it
     */
    public void perform() {
        System.out.println("SimpleJDBCConsole4");
        var fishDAO = new FishDAO_04();
        var fishID = requestFishID();
        FishData fishData = null;
        try {
            fishData = fishDAO.getIdQueryRecord(fishID);
        } catch (SQLException ex) {
            LOG.log(Level.SEVERE, "SQLException\n{0}", ex.getMessage());
            // There is no recovery from this error so end the program
            System.exit(1);
        }
        
        if (fishData == null) {
            System.out.println("Primary key " + fishID + " not found.");
        } else
            System.out.println(fishData);
    }

    /**
     * Where it begins
     *
     * @param args
     */
    public static void main(String[] args) {
        new SimpleJDBCConsole4().perform();
        System.exit(0);
    }

}
