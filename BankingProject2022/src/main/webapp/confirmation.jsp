

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmation</title>
         <link href="css/bootstrap.css" rel="stylesheet"/>
    <style>
        .footer{
            padding:40px
        }
    </style>
    <%
        String service = request.getParameter("service");
        String provideraccno = request.getParameter("provideraccno");
        String acc = request.getParameter("accno");
        
    %>
    </head>
    <body>

        <div class="container">
            <h1>Confirmation</h1>
        <form method="post" action="./utility"> 
            <label for="service">Service</label>
            <input type="text" class="form-control" name ="service" value="<%=service%>">
        <label for="provideraccno">Service Provider Account Number</label>
            <input type="text" name ="provider" class="form-control" value="<%=provideraccno%>">
          <label for="acc">Account Number</label>
            <input type="text" name ="acc" class="form-control" value="<%=acc%>">
          <label for="amount">Amount</label>
                    <input
                      type="text"
                      id="amount"
                      name="amount"
                      class="form-control"
                      placeholder="Enter amount to be paid"
                    />
            
            <label for="pin">Pin</label>
                    <input
                      type="text"
                      id="pin"
                      name="pin"
                      class="form-control"
                      placeholder="Enter your pin to proceed"
                    />
                     <button class="btn btn-primary btn-block">Go</button>
        </form>
        </div>
    </body>
</html>
