<%@ page import="beans.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table id="result_table" class="results" >
    <jsp:useBean id="table" class="beans.TableBean" scope="session"/>
    <tr >
    <td class="result_header"> X &emsp; &emsp;</td>
    <td class="result_header"> Y &emsp; &emsp; </td>
    <td class="result_header"> R &emsp; &emsp;</td>
    <td class="result_header"> Inside &emsp;</td>
    <td class="result_header"> Running time,&emsp; <br> milisec</td>
    <td class = "result_header"> Current time</td>
    </tr>
    <tbody >
    <%
    if (table != null && table.getTable().size() != 0) {
    %>
    <p hidden id="last_x"><%=table.getTable().get(table.getTable().size()-1).getX()%></p>
    <p hidden id="last_y"><%=table.getTable().get(table.getTable().size()-1).getY()%></p>
    <p hidden id="last_res"><%=table.getTable().get(table.getTable().size()-1).isValid()%></p>
    <%
            for (Raw check : table.getTable()) {
    %>
    <tr>
        <td class="x"><%=check.getX()%>
        </td>
        <td class="y"><%=check.getY()%>
        </td>
        <td class="r"><%=check.getR()%>
        </td>
        <td class="hit" style='color:<%=(check.isValid() ? "lime" : "red")%>'>
            <%= check.isValid() ? "yes" : "no" %>
        </td>
        <td class="ex_time" >
            <%= check.getTime()%>
        </td>
        <td class="cur_time" >
            <%= check.getCurrentTime()%>
        </td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>