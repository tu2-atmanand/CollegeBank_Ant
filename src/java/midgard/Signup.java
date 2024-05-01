package midgard;

import java.io.IOException;
import static java.security.AccessController.getContext;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

public class Signup extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/collegebank";
        String username = "root";
        String dbPassword = "admin@123";

        // JDBC variables
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish database connection
            conn = DriverManager.getConnection(url, username, dbPassword);

            // SQL query to insert user data into the Users table
            String sql = "INSERT INTO users (Name, Password) VALUES (?, ?)";

            // Create prepared statement
            pstmt = conn.prepareStatement(sql);

            // Set parameters for the SQL query
            pstmt.setString(1, name);
            pstmt.setString(2, password);

            // Execute the SQL query
            int rowsAffected = pstmt.executeUpdate();

            String message;
            if (rowsAffected > 0) {
                message = "User registered successfully!";
                request.getSession().setAttribute("loggedInUser", username);
            } else {
                message = "Failed to register user!";
            }

            // Redirect to signup page with toast notification message
            request.setAttribute("toastMessage", message);
            request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            String errorMessage = "Error: " + e.getMessage();
            // Set error message for toast notification
            request.setAttribute("toastMessage", errorMessage);
            request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);
        } finally {
            // Close JDBC objects
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException ex) {
                    // Log or handle closing error
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    // Log or handle closing error
                }
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
