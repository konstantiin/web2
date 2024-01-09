package servlets

import beans.*
import java.time.OffsetDateTime
import java.time.ZoneOffset
import java.time.format.DateTimeFormatter
import javax.servlet.annotation.WebServlet
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse


@WebServlet(name = "AreaCheckServlet", urlPatterns = ["/check"])
class AreaCheckServlet: HttpServlet() {
    override fun doPost(request: HttpServletRequest, response: HttpServletResponse){
        val start = System.nanoTime()
        try{
            val yCoordinate: String = request.getParameter("y_coordinate")
            val xCoordinate: String = request.getParameter("x_coordinate")
            val rCoordinate: String = request.getParameter("r_coordinate")

            val xValue = xCoordinate.toDouble()
            val yValue = yCoordinate.toDouble()
            val rValue = rCoordinate.toDouble()
            val result = checkDot(xValue, yValue, rValue)
            val newRaw =  Raw(xValue, yValue,  rValue, result)
            var table = request.session.getAttribute("table")
            if (table == null){
                table = TableBean()
            }
            var currentTimeObject: OffsetDateTime = OffsetDateTime.now(ZoneOffset.UTC)
            var currentTime: String
            try {
                currentTimeObject = currentTimeObject.minusMinutes(request.getParameter("timezone").toLong())
                currentTime = currentTimeObject.format(DateTimeFormatter.ofPattern("HH:mm:ss"))
            } catch (exception: Exception) {
                currentTime = "no info"
            }
            newRaw.currentTime = currentTime
            table = table as TableBean
            val time = System.nanoTime() - start;
            newRaw.time = time.toDouble();
            table.addElement(newRaw)
            request.session.setAttribute("table", table)
            servletContext.getRequestDispatcher("/table.jsp").forward(request, response)

        } catch (e: Exception){
            request.setAttribute("error_message", e)
            servletContext.getRequestDispatcher("/error.jsp").forward(request, response)
        }
    }
    private fun checkDot(x: Double, y: Double, r: Double): Boolean{
        return if (x >= 0 && y >= 0) firstQuarter(x, y , r)
        else if (x <= 0 && y >= 0) secondQuarter(x, y, r)
        else if (x <= 0 && y <= 0) thirdQuarter(x, y, r)
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