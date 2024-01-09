package servlets

import javax.servlet.annotation.WebServlet
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

@WebServlet(name = "ControllerServlet", urlPatterns = ["/control"])
class ControllerServlet: HttpServlet() {
    override fun doPost(request: HttpServletRequest, response: HttpServletResponse){
        if(request.getParameter("x_coordinate") != null && request.getParameter("y_coordinate") != null
            && request.getParameter("r_coordinate") != null) {
            servletContext.getNamedDispatcher("AreaCheckServlet").forward(request, response);
        }
        else servletContext.getRequestDispatcher("/main.jsp").forward(request, response)
    }
    override fun doGet(request: HttpServletRequest, response: HttpServletResponse){
        servletContext.getRequestDispatcher("/main.jsp").forward(request, response)
    }

}