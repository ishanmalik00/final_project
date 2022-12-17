

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Utility Bill</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
    <style>
        .footer{
            padding:40px
        }
    </style>
    </head>
    <body>
        
        <div class="container py-5">
      <div class="col-lg-8 offset-lg-2">
        <div class="">
          <div class="card shadow border-0">
            <div class="card-body">
              <h2 class="text-center py-2">Pay utility bill</h2>
              
              <form action="./confirmation.jsp" method="post">
               
                  
                    <label for="service">Affiliated Services</label>
                    <select name="service" id="service" class="form-control">
                        <option value="Select">Select</option>
                        <option value="Freedom Mobile">Freedom Mobile</option>
                        <option value="Hydro-Québec">Hydro-Québec</option>
                        <option value="CIK Telecom">CIK Telecom</option>
                    </select>
                  
                 
                    <label for="provideraccno">Service Provider Account Number</label>
                    <input
                      type="text"
                      id="provideraccno"
                      name="provideraccno"
                      class="form-control"
                    />
                 
                  
                    <label for="accno">A/C No</label>
                    <input
                      type="text"
                      id="accno"
                      name="accno"
                      class="form-control"
                    />
                
                  
                    
                  
                 
                 <button class="btn btn-primary btn-block">Go</button>
              </form>
              
            </div>
          </div>
        </div>
      </div>
    </div>
    </body>
</html>
