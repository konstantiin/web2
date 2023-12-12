<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>rf</title>
    </head>
    <body>
        <table>
            <tr>
                <th class="hat" colspan="3"> Luchinkin Konstantin <br>Group P3230 <br>Variant hz </th>
            </tr>
            <th>Canvas</th>
            <th>Coordinates</th>
            <th>Results</th>
            <tr>
                <td>
                    <img src = "img/desmos-graph.png">
                </td>
                <td>
                    <div>
                        <b>Input x:</b>
                        <div>
                            <input  type="checkbox" name="x_coordinate" class="x" id="x_value_-2" value="-4" > -4<br>
                            <input  type="checkbox" name="x_coordinate" class="x" id="x_value_-1.5" value="-3"> -3<br>
                            <input  type="checkbox" name="x_coordinate" class="x" id="x_value_-1" value="-2"> -2<br>
                            <input  type="checkbox" name="x_coordinate" class="x" id="x_value_-0.5" value="-1"> -1<br>
                            <input  type="checkbox" name="x_coordinate" class="x" id="x_value_0" value="0" checked> 0<br> <!-- выбран по дефолту-->
                            <input  type="checkbox" name="x_coordinate" class="x" id="x_value_0.5" value="1"> 1<br>
                            <input  type="checkbox" name="x_coordinate" class="x" id="x_value_1" value="2"> 2<br>
                            <input  type="checkbox" name="x_coordinate" class="x" id="x_value_1.5" value="3"> 3<br>
                            <input  type="checkbox" name="x_coordinate" class="x" id="x_value_2" value="4"> 4<br>
                        </div>
                    </div>
                    <div>
                        <b>Input y:</b>
                        <div>
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_-2" value="-5" > -5<br>
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_-1.5" value="-4"> -4<br>
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_-1" value="-3"> -3<br>
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_-0.5" value="-2"> -2<br>
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_0" value="-1"> -1<br> <!-- выбран по дефолту-->
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_0.5" value=0 checked> 0<br>
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_1" value="1"> 1<br>
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_1.5" value="2"> 2<br>
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_2" value="3"> 3<br>
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_2.5" value="4"> 4<br>
                            <input  type="radio" name="y_coordinate" class="y" id="y_value_3" value="5"> 5<br>
                        </div>
                    </div>
                    <div>
                        <b>Input R:</b>
                        <div>
                            <input  type="text" name = "r_coordinate" class = "r">
                        </div>
                    </div>
                </td>

            </tr>
            <tr>
                <td class = "footer"> ITMO, 2023</td>
            </tr>

        </table>
    </body>
<script src = "js/validate.js"> </script>

</html>