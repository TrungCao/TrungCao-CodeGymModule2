import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductServlet",urlPatterns = "/discount")
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float discountPercent = Float.parseFloat(request.getParameter("discount_percent"));
        float discountAmount = (float) (price* discountPercent *0.01);
        float discountPrice = price - discountAmount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Product Discount Calculator</h1>");
        writer.println("Product Description: " + description+ "<br/>");
        writer.println("Price : &nbsp $" +price+ "<br/>");
        writer.println("Discount Percent: &nbsp" +discountPercent+ "%<br/>");
        writer.println("Discount Amount: &nbsp $" +discountAmount+ "<br/>");
        writer.println("Discount Price: &nbsp $" +discountPrice+ "<br/>");
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
