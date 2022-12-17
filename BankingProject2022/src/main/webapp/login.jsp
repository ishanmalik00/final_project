<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="css/bootstrap.css" rel="stylesheet"/>
</head>
<body>
<div class="container">
    <div class="row mt-5">
        <div class="col-md-4 offset-md-4">
            
            <div class="alert alert-primary text-center">
                <h2>User Login</h2>
            </div>
            
            <form action="./CheckLogin" method="post">
                <div class="mb-2">
                    <label for="email">Enter Username: </label>
                    <input type="text" name="username" class="form-control" required>
                </div>
                <div class="mb-2">
                    <label for="pass">Enter Password: </label>
                    <input type="password" name="password" class="form-control" required>
                </div>
                <div class="mb-2">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>

        </div>
    </div>
</div>
</body>
</html>