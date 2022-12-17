

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>deposit</title>
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
            <h2 class="text-center py-2">Deposit</h2>
            <form method="post" action='./amount_deposit.jsp'>
              <div class="row">
                <div class="col-2">
                  <label for="acc">Account No.</label>
                </div>
                <div class="col-8">
                  <input type="text" id="acc" name="acc" class="form-control" />
                </div>
                <div class="col-2 d-grid">
                  <button class="btn btn-primary btn-block">Go</button>
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
