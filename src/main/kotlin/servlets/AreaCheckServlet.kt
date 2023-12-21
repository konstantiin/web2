package servlets

import javax.servlet.annotation.WebServlet
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

@WebServlet(name = "AreaCheckServlet", urlPatterns = ["/check"])
class AreaCheckServlet: HttpServlet(){
    override fun doPost(request: HttpServletRequest, response: HttpServletResponse){
        val xCoordinate = request.getParameter("x_coordinate")
        val yCoordinate = request.getParameter("y_coordinate")
        val rCoordinate = request.getParameter("r_coordinate")
        val xValue = xCoordinate.toDouble()
        val yValue = yCoordinate.toDouble()
        val rValue = rCoordinate.toDouble()
        var result = checkDot(xValue, yValue, rValue)

    }
    private fun checkDot(x: Double, y: Double, r: Double): Boolean{
        return if (x > 0 && y > 0) firstQuarter(x, y , r)
        else if (x < 0 && y > 0) secondQuarter(x, y, r)
        else if (x < 0 && y < 0) thirdQuarter(x, y, r)
        else forthQuarter(x, y, r)
    }
    private fun firstQuarter(x: Double, y: Double, r: Double): Boolean{
        return y <= (-x + r)
    }
    private fun secondQuarter(x: Double, y: Double, r: Double): Boolean{
        return x >= -r && y <= r/2
    }
    private fun thirdQuarter(x: Double, y: Double, r: Double): Boolean{
        return x*x + y*y <= r*r
    }
    private fun forthQuarter(x: Double, y: Double, r: Double): Boolean{
        return false
    }
}