package servlets

import javax.servlet.annotation.WebServlet
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

@WebServlet(name = "ControllerServlet", urlPatterns = ["/control"])
class ControllerServlet: HttpServlet() {
    override fun doGet(request: HttpServletRequest, response: HttpServletResponse){
        println("it works")
    }
    override fun doPost(request: HttpServletRequest, response: HttpServletResponse){
        servletContext.getNamedDispatcher("AreaCheckServlet").forward(request, response)
    }
}