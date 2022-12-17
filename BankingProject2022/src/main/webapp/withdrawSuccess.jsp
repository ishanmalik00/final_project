

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Withdraw Success</title>
         <link href="css/bootstrap.css" rel="stylesheet"/>
    <style>
        .footer{
            padding:40px
        }
    </style>
      <%
            String withdraw = request.getParameter("amount");
            String balance = request.getParameter("balance");
            String message = request.getParameter("message");
            %>
    </head>
    <body>
        <%@include file="header.html" %>
        <%
            if(message!=null)
            {
            %>
            <h1><%=message%></h1>
            <%
                }
else
{
%>
        <h1><%=withdraw%> Withdraw Successfully !!!</h1>
        <h1>Your Balance is:  <%=balance%></h1>
        <%
            }
%>
         <div class="footer bg-dark mt-5 fixed-bottom" >
         </div>
    </body>
</html>
