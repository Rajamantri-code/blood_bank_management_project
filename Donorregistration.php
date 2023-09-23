<?php
include "Database.php";

if(isset($_POST["Submit"]))
{   

    $fname = $_POST["Dfname"];
    $uname = $_POST["Duname"];
    $passowrd =  md5($_POST["Dpass"]);
    $email = $_POST["Dmail"];
    $age = $_POST["Dage"];
    $bloodtype = $_POST["Dblood"];
    $mobinum = $_POST["Dtel"];
    $address = $_POST["Daddress"];


    if(filter_var($email,FILTER_VALIDATE_EMAIL))
    {
      $sql = "SELECT * FROM `donor` WHERE D_email='$email'";
      $run = mysqli_query($conn,$sql);
      $result = mysqli_num_rows($run);
      if($result>=1)
      {
        echo '<script>alert("Your email already Registered please login")</script>';
      }
    }
    else{

    $sql = "INSERT INTO `donor`( `D_fname`, `D_username`, `D_password`, `D_email`, `D_age`, `D_bloodtype`, `D_tel`, `D_address`) VALUES
    ('$fname','$uname','$passowrd','$email','$age','$bloodtype','$mobinum','$address')";
    $conn->query($sql);
   echo '<script>alert("Successfully Registered")</script>';
    }
}


?>
<!DOCTYPE html>
<html>
<head>
  <title>Donor Regestration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" type="text/css" href="Donorreg.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
</head>

<body>
  <div class="container">
    <div class="row px-2">
      <div class="col-lg-10 col-xl-9 card flex-row mx-auto px-0">
        <div class="img-left d-none d-md-flex"></div>

        <div class="card-body">
          <h4 class="title text-center mt-3">
            Donor Regestration
          </h4>
          <form action = " Donorregistration.php" method= "post">
          <div class="form-box px-3" >
            <div class="form-input">
              <span><i class="uil uil-user"></i></span>
              <input type="text" name="Dfname" placeholder="Enter your Fullname" tabindex="10" required>
            </div>
            <div class="form-input">
              <span><i class="uil uil-user"></i></span>
              <input type="text" name="Duname" placeholder="Enter user name" tabindex="10" required>
            </div>
            <div class="form-input">
              <span><i class="uil uil-lock icon"></i></span>
              <input type="password" name="Dpass" placeholder="Create a password" required>
            </div>
            <div class="form-input">
              <span><i class="uil uil-envelope icon"></i></span>
              <input type="email" name="Dmail" placeholder="Enter your email" required>
            </div>
            <div class="form-input">
              <span><i class="uil uil-calendar-alt"></i></span>
              <input type="text" name="Dage" placeholder="Age" required>
            </div>

             <select class="form-select" aria-label="Default select example" name= "Dblood">
              <option selected>Choose a Blood group</option>
              <option value="A+">A+</option>
              <option value="A-">A-</option>
              <option value="B+">B+</option>
              <option value="B-">B-</option>
              <option value="O+">O+</option>
              <option value="O-">O-</option>
              <option value="AB+">AB+</option>
              <option value="AB-">AB-</option>
            </select>


            <div class="form-input">
              <span><i class="uil uil-phone"></i></span>
              <input type="text" name="Dtel" placeholder="Tel" required>
            </div>

            <div class="form-input">
              <span><i class="uil uil-home"></i></span>
              <input type="text" name="Daddress" placeholder="Address" required>
            </div>
            <div class="mb-2">
              <button type="submit"  name = "Submit"class="btn btn-block text-uppercase">
                Signup
              </button>
            </div>

            <div class="text-center">
              Already a member?
              <a href="Donornew.php" class="register-link">
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