

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Open New Account</title>
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
        <div class="">
          <div class="card shadow border-0">
            <div class="card-body">
              <h2 class="text-center py-2">New Account</h2>
              
              <form action="./AddCustomer" method="post">
                <div class="row">
                  <div class="col-md-6 mb-3">
                    <label for="firstName">First Name</label>
                    <input
                      type="text"
                      id="firstname"
                      name="first_name"
                      class="form-control"
                    />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="lastName">Last Name</label>
                    <input
                      type="text"
                      id="lastName"
                      name="last_name"
                      class="form-control"
                    />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="address">Address</label>
                    <input
                      type="text"
                      id="address"
                      name="address"
                      class="form-control"
                    />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="ssn">SSN</label>
                    <input
                      type="text"
                      id="ssn"
                      name="ssn"
                      class="form-control"
                    />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="mobile">Mobile</label>
                    <input
                      type="tel"
                      id="mobile"
                      name="mobile"
                      class="form-control"
                    />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="email">Email</label>
                    <input
                      type="email"
                      id="email"
                      name="email"
                      class="form-control"
                    />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="pin">PIN</label>
                    <input
                      type="text"
                      id="pin"
                      name="pin"
                      class="form-control"
                    />
                  </div>
                  <div class="col-md-12 mb-3">
                    <input
                      type="submit"
                      class="btn btn-primary"
                      value="SUBMIT"
                    />
                  </div>
                </div>
              </form>
              
            </div>
          </div>
        </div>
      </div>
    </div>
        <!-- </div> -->

       
    
    <!-- FOOTER -->
    <div class="footer footer-bg bg-dark"></div>
    </body>
</html>
