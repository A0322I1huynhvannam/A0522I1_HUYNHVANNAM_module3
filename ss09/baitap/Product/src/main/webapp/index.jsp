<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 16-Nov-22
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  </head>
  <body>
  <form action="ProductServlet" method="get">
    <input type="text" name="price" placeholder="Enter your price: "/>
    <input type="text" name="percent" placeholder="Enter your percent: "/>
    <input type = "submit" id = "submit" value = " Calculate Discount "  />
  </form>
  <br>
  discountPrice = ${discountAmount};
  <br>
  discountAmount = ${discountAmount};
  </body>
</html>
