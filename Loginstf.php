<?php
//$message="";
//session_start();
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
  header("location: menu12.php");
  exit;
}
if(count($_POST)>0) {

	$conn = mysqli_connect("localhost","root","","mydb");
   $password1=$_POST["password"];
  
	//$result = mysqli_query($conn,"SELECT * FROM staff WHERE password = '". $_POST["password"]."' and  StaffId= '". $_POST["StaffId"]."'");
    $result = mysqli_query($conn,"SELECT * FROM staff WHERE password = '".$password1."'and StaffId= '". $_POST["StaffId"]."';")or die('alert'.$password1);
  
	$count  = mysqli_num_rows($result);
	if($count==0) {
		echo "<script>alert('Invalid Staff Id or Password! ');</script>";
					
		//$message = "Invalid Username or Password!";
		
	} else {
		session_start(); // Store data in session variables
            $_SESSION["loggedin"] = true;
		echo "<script>alert('You are successfully authenticated!');</script>";
		echo "<script>window.location.href='./menu12.php';</script>";
									
		//$message = "You are successfully authenticated!";
	}
}
?>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alef">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alegreya">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="assets/css/styles.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
.body {margin:0;}

.icon-bar {
  width: 100%;
  
  overflow: auto;
}

.icon-bar a {
  float: right;
  width: 5%;
  text-align: center;
  padding: 5px 0;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;
}
.iconbar-right a{
	float: left;
  width: 5%;
  text-align: center;
  padding: 5px 0;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;


}

.icon-bar a:hover {
  background-color: #000;
}

.active {
  background-color: #8C0100;
}
</style>
</head>
<body>
<div class="login-clean" style="background-image:url(&quot;assets/img/computer-lab-png-computer-lab-992.png&quot;);background-repeat:no-repeat;background-size:cover;">
    <div class="icon-bar">
   
   <div class="iconbar-right">
  	<a class="active" href="index.php"><i class="fa fa-home"></i></a>
  </div></div>



  <h1 class="text-uppercase text-center justify-content-center" style="background-size:auto;font-weight:bold;font-family:Alegreya, serif;margin-top:-40px;background-color:#8c0100;color:rgb(255,255,255);">Login Form</h1>
    
<form method="post" style="background-repeat:no-repeat;margin-top:52px;" action="Loginstf.php">

	<div class="message"><?php //if($message!="") { echo $message; } ?></div>
	
	  <div class="illustration" style="width:260px;height:152px;">
<img src="assets/img/user.png" width="150" style="height:98px;margin-bottom:51px;"></div>
    			 <div class="form-group"><input type="text" name="StaffId" placeholder="Staff Id" class="form-control" required></div>
			<div class="form-group"><input type="password" name="password" placeholder="Password" class="form-control" required></div>
			
		<div class="form-group">
		<input type="submit" name="submit" value="Log In" class="btn btn-primary btn-block" style="background-color:#8c0100;" ></div>
			
			<a href="Forgetpassstf.php" class="forgot">Forgot your password?</a>
			<div class="form-group"><a class="btn btn-primary btn-block" role="button" href="staff.php" style="background-color:#8c0100;">Sign Up</a></div>
		
		
</form>
<?php
if(isset( $_POST["submit"])){
$StaffId = $_POST['StaffId'];
$password = $_POST['password'];
$password1=$password;

$query="insert into loginstf values ('$StaffId','$password1');";
          echo $query."<br>";
          $run=mysqli_query($conn,$query);
          if(isset($run)){
            $_SESSION['StaffId']=$StaffId;
            }   }
            ?>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
</body></html>