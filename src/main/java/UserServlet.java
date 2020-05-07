import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
@WebServlet("/")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<User> users = new UserJdbcDAO().getAllUsers();
            req.setAttribute("users", users);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        getServletContext().getRequestDispatcher("/main.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            User user = new User(Integer.parseInt(req.getParameter("id")),
            req.getParameter("name"),Integer.parseInt(req.getParameter("age")),req.getParameter("pass"));
            new UserJdbcDAO().addUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        doGet(req, resp);
    }
}
