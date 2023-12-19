<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>LAB2-WEB</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <table>
            <tr>
                <th class="hat" colspan="3">
                    <span class="fio-group">Лучиникин Константин Сергеевич, группа: P3230 &emsp; &emsp; &emsp; Вариант какой-то
                    </span>
                </th>
            </tr>
            <tr>
                <td>Canvas</td>
                <td>Coordinates</td>
                <td>Results</td>
            </tr>

            <tr>
                <td class="canvas">
                    <!--
                    <img src = "img/desmos-graph.png" width="95%">
                    -->
                </td>
                <td>
                    <div>
                        <b>Input x:</b>
                        <div>
                            <input  type="button" name="x_coordinate" class="x" value="-4" ><br>
                            <input  type="button" name="x_coordinate" class="x" value="-3"><br>
                            <input  type="button" name="x_coordinate" class="x" value="-2"><br>
                            <input  type="button" name="x_coordinate" class="x" value="-1"><br>
                            <input  type="button" name="x_coordinate" class="x selected_x"  value="0"><br>
                            <input  type="button" name="x_coordinate" class="x" value="1"><br>
                            <input  type="button" name="x_coordinate" class="x" value="2"><br>
                            <input  type="button" name="x_coordinate" class="x" value="3"><br>
                            <input  type="button" name="x_coordinate" class="x" value="4"><br>
                        </div>
                    </div>
                    <div>
                        <b>Input y:</b>
                        <div>
                            <input  type="radio" name="y_coordinate" class="y" value="-5" > -5<br>
                            <input  type="radio" name="y_coordinate" class="y" value="-4"> -4<br>
                            <input  type="radio" name="y_coordinate" class="y" value="-3"> -3<br>
                            <input  type="radio" name="y_coordinate" class="y" value="-2"> -2<br>
                            <input  type="radio" name="y_coordinate" class="y" value="-1"> -1<br>
                            <input  type="radio" name="y_coordinate" class="y" value= "0" checked> 0<br>
                            <input  type="radio" name="y_coordinate" class="y" value="1"> 1<br>
                            <input  type="radio" name="y_coordinate" class="y" value="2"> 2<br>
                            <input  type="radio" name="y_coordinate" class="y" value="3"> 3<br>
                            <input  type="radio" name="y_coordinate" class="y" value="4"> 4<br>
                            <input  type="radio" name="y_coordinate" class="y" value="5"> 5<br>
                        </div>
                    </div>
                    <div>
                        <b>Input R:</b>
                        <div>
                            <input  type="text" pattern="[0-5]" name = "r_coordinate" class = "r">
                        </div>
                    </div>
                    <div>
                        <input type="button" class = "submit" value="submit">
                    </div>
                </td>

            </tr>
            <tr>
                <th class = "footer"> ITMO, 2023</th>
            </tr>

        </table>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <!--<script src="js/draw.js"> </script>-->
        <script src ="js/validate.js"></script>


    </body>
</html>