package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/")
public class NewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<List<Order>> lists = new ArrayList<List<Order>>();
        lists.add(new ArrayList<Order>() {{
            add(new Order("Order 1"));
            add(new Order("Order 2"));
            add(new Order("Order 3"));
            add(new Order("Order 4"));
            add(new Order("Order 5"));
        }});

        req.setAttribute("lists", lists);

        getServletContext().getRequestDispatcher("/out.jsp").forward(req, resp);
    }
}

