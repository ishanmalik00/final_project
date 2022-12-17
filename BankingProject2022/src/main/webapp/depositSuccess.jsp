

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deposit Success</title>
         <link href="css/bootstrap.css" rel="stylesheet"/>
    <style>
        .footer{
            padding:40px
        }
    </style>
      <%
            String deposit = request.getParameter("amount");
            String balance = request.getParameter("balance");
            %>
    </head>
    <body>
        <%@include file="header.html" %>
        <h1><%=deposit%> Deposit Successfully !!!</h1>
        <h1>Your Balance is:  <%=balance%></h1>
        <div class="footer bg-dark mt-5 fixed-bottom" ></div>
    </body>
</html>
