<!DOCTYPE html>
<html>
<head>
  <title>Reset Password</title>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" type="text/css" href="Reset.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
</head>
<body>
  <div class="container">
    <div class="row px-3">
      <div class="col-lg-6 col-xl-5 card flex-row mx-auto px-0">
        <div class="img-left d-none d-md-flex"></div>

        <div class="card-body">
          <h3 class="title text-center mt-4">
            Reset Password
          </h3>
          <h6 class="title text-center mt-3">
            Enter your email to reset your password.
          </h6>
          <form action ="Reset.php" method = "post">
          <div class="form-box px-3">
            <div class="form-input">
              <span><i class="fa fa-envelope-o"></i></span>
              <input type="email" name="email" placeholder="Enter your Email Address" tabindex="10" required>
            </div>
            <div class="mb-3">
              <button type="submit" name= "rest" class="btn btn-block text-uppercase">
                Reset Password
              </button>
            </div>
            </div>   
        </div>
      </div>
    </form>
  </div>
    </div>
  </div>
</body>
</html>