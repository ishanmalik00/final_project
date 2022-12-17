<%-- 
    Document   : statement
    Created on : Dec 15, 2022, 6:16:01 PM
    Author     : amrinder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Statement</title>
    <link href="./css/bootstrap.css" rel="stylesheet" />
    <link href="./css/myStyle.css" rel="stylesheet" />
    <style>
      .footer {
        padding: 40px;
      }
    </style>
    </head>
    <body>
        
        <%@include file="header.html" %>
        
        <div class="container py-5">
      <div class="col-lg-8 offset-lg-2">
        <div class="card shadow border-0">
          <div class="card-body">
            <h2 class="text-center py-2">View Statement</h2>
            <form method="post" action="./account_statement.jsp">
              <div class="row">
                <div class="col-md-2 col-4 mb-3">
                  <label for="acc">Account No.</label>
                </div>
                <div class="col-md-10 col-8 mb-3">
                  <input
                    type="text"
                    id="acc"
                    name="acc"
                    class="form-control"
                    placeholder="xxxx xxxx xxxx"
                  />
                </div>

                <div class="col-md-2 col-4 mb-3">
                  <label for="start">Start Date</label>
                </div>
                <div class="col-md-10 col-8 mb-3">
                  <input
                    type="date"
                    id="start"
                    name="start"
                    class="form-control"
                    
                  />
                </div>

                <div class="col-md-2 col-4 mb-3">
                  <label for="end">End Date</label>
                </div>
                <div class="col-md-10 col-8 mb-3">
                  <input type="date" id="end" name="end" class="form-control" />
                </div>

                <div class="col-md-2 col-4"></div>
                <div class="col-2">
                  <button class="btn btn-primary btn-block px-5">Go</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- FOOTER -->
    <div class="footer footer-bg bg-dark fixed-bottom"></div>
    </body>
</html>
