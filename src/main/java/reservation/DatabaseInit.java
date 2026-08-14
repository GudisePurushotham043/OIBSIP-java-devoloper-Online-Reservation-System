package reservation;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.Statement;
import java.util.stream.Collectors;

public class DatabaseInit {
    public static void initializeDatabase() {
        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement()) {
            
            if (conn != null) {
                System.out.println("Connected to the database. Initializing schema...");
                
                // Read schema.sql from resources
                InputStream is = DatabaseInit.class.getResourceAsStream("/schema.sql");
                if (is == null) {
                    System.out.println("schema.sql not found!");
                    return;
                }
                
                String sql = new BufferedReader(new InputStreamReader(is))
                        .lines().collect(Collectors.joining("\n"));
                
                // SQLite JDBC requires executing multiple statements using executeUpdate one by one
                // Or simply executing them separated by semicolon if the driver supports it
                // executeUpdate might only run the first one if separated by semicolon in some drivers.
                // It's safer to split by ';'
                String[] statements = sql.split(";");
                for (String s : statements) {
                    if (!s.trim().isEmpty()) {
                        stmt.execute(s.trim());
                    }
                }
                
                System.out.println("Database initialization complete.");
            }
        } catch (Exception e) {
            System.out.println("Failed to initialize database: " + e.getMessage());
        }
    }
    
    public static void main(String[] args) {
        initializeDatabase();
    }
}
