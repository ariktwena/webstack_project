import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "Servlet", urlPatterns = {"/ServletPage"})
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.getWriter().println("We have a connection");

        String firstName = request.getParameter("fName");

        response.getWriter().println("First name is: " + firstName);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Incoming variables
        String firstName = request.getParameter("fName");
        String lastName = request.getParameter("lName");

        //Outgoing objects (variables are objects when they are sent out from at servlet)
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);

        //Send list as attribute
        List<String> listOfNames = new ArrayList<>();

        listOfNames.add("Sam");
        listOfNames.add("Bob");
        listOfNames.add("John");
        listOfNames.add("John");
        listOfNames.add("John");
        listOfNames.add("John");

        request.setAttribute("listOfNames", listOfNames);

        //Send map as attribute
        Map<String, Integer> nameAgeMap = new HashMap<>();
        nameAgeMap.put("Billy", 56);
        nameAgeMap.put("Joe", 45);
        nameAgeMap.put("Frank", 67);

        request.setAttribute("nameAgeMap", nameAgeMap);

        //Send Set as attribute (Will only show ONE of each)
        Set<String> setOfNames = new HashSet<>(listOfNames);

        request.setAttribute("setOfNames", setOfNames);


        request.getRequestDispatcher("WEB-INF/" + "AdminPage.jsp").forward(request, response);

    }
}
