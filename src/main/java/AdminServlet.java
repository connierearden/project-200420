import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            new UserJdbcDAO().deleteUser(req.getParameter("name"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //getServletContext().getRequestDispatcher("/main.jsp").forward(req,resp);
        resp.sendRedirect("/");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            User user = new UserJdbcDAO().getUserById(Long.parseLong(req.getParameter("id")));
            new UserJdbcDAO().updateUser(user, req.getParameter("name"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect("/");
    }
}
