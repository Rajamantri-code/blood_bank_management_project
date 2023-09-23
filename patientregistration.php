
<?php
include "Database.php";

if(isset($_POST["Signup"]))
{
   $Hname = $_POST["H_name"];
   $Huname = $_POST["H_uname"];
   $Hpassword = $_POST["H_password"];
   $Hemail = $_POST["H_email"];
   $Hmobile = $_POST["H_tel"];
   $Haddress = $_POST["H_daddress"];
   
     $sql = "SELECT * FROM `hospital` WHERE H_mail='$Hemail'";
     $run = mysqli_query($conn,$sql);
     $result = mysqli_num_rows($run);
     if($result>=1)
     {
       echo '<script>alert("Your email already Registered please login")</script>';
       
     }
    
   else{
   $sql = "INSERT INTO `hospital`(`H_name`, `H_username`, `H_password`, `H_mail`, `H_tel`, `H_address`) VALUES 
   ('$Hname','$Huname','$Hpassword','$Hemail',' $Hmobile','$Haddress')";
   $conn->query($sql);
   echo '<script>alert("Registered")</script>';
   
   }

}


?>
<!DOCTYPE html>
<html>
<head>
  <title>Hospital Regestration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" type="text/css" href="loginadmin.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
</head>

<body>
  <div class="container">
    <div class="row px-3">
      <div class="col-lg-10 col-xl-9 card flex-row mx-auto px-0">
        <div class="img-left d-none d-md-flex"></div>

        <div class="card-body">
          <h4 class="title text-center mt-5">
            Hospital Regestration
          </h4>
          <form action = "<?php echo $_SERVER["PHP_SELF"];?>"method = "post">
          <div class="form-box px-3">
            <div class="form-input">
              <span> <i class="uil uil-hospital"></i></span>
              <input type="text" name="H_name" placeholder="Hospital name" tabindex="10" required>
            </div>
            <div class="form-input">
              <span><i class="uil uil-user"></i></span>
              <input type="text" name="H_uname" placeholder="Enter user name" tabindex="10" required>
            </div>
            <div class="form-input">
              <span><i class="uil uil-lock icon"></i></span>
              <input type="password" name="H_password" placeholder="Create a password" required>
            </div>
            <div class="form-input">
              <span><i class="uil uil-envelope icon"></i></span>
              <input type="email" name="H_email" placeholder="Enter your email" required>
            </div>

            <div class="form-input">
              <span><i class="uil uil-phone"></i></span>
              <input type="text" name="H_tel" placeholder="Tel" required>
            </div>

            <div class="form-input">
              <span><i class="uil uil-home"></i></span>
              <input type="text" name="H_daddress" placeholder="Address" required>
            </div>

            <div class="mb-2">
              <button type="submit" name = "Signup" class="btn btn-block text-uppercase">
                Signup
              </button>
            </div>

            <div class="text-center">
              Already a member?
              <a href="Hospital.php" class="register-link">
                Login Now
              </a>
            </div>
        </div>
        </form>
      </div>
    </div>
  </div>
  </div>
</body>
</html>