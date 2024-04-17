<?php

session_start();
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){

    header("location: Loginstd.php");
    exit;
}

$conn=$conn=mysqli_connect("localhost","root","","mydb") or die("connection not established");

?>

<!DOCTYPE html>
<html>

<head>
  
  <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <title>project</title>
 
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One">
 
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bigshot+One">
  
  <link rel="stylesheet" href="assets12/css/styles.min.css">
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

<body style="height:15PX;">

 
   
 <div class="contact-clean">
    <div class="icon-bar">
   
  <a href="logoutstd.php" ><i  class="fa fa-power-off"></i></a>
  <div class="iconbar-right">
  	<a href="menu12stu.php"><i onclick="history.back()"class="fa fa-arrow-left"></i></a>
  	<a class="active" href="index.php"><i class="fa fa-home"></i></a>
  </div>
  
   <div style="color:white">
	<?php echo "logged in by ".$Roll_No= $_SESSION['RollNo'] ?>
		</div>			

  </div>


 

<h1 class="text-uppercase text-center justify-content-center" style="background-size:auto;font-weight:bold;font-family:Alegreya, serif;margin-top:-46px;background-color:#8c0100;color:rgb(255,255,255);">DETAILS</h1>
       <br><br>

             <form method="post" action="data12.php"  style="background-color:#8c0100;" >
             	<div class="form-group">
            	<input class="form-control" type="text" value="<?php echo $_SESSION['RollNo']; ?>" readonly></div>
            	<div class="form-group">
				        <select name="LABNO" class="form-control" required >
        <option value="" >LAB NO</option >
        <option value="1">101</option>
        <option value="2">102</option>
        <option value="3">103</option>
        <option value="4">104</option>
        <option value="5">105</option>
      </select></div>
     
               <div class="form-group"> 
                <select name="PCNO" class="form-control" required>
        <option value="">PC NO</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
		<option value="1">6</option>
        <option value="2">7</option>
        <option value="3">8</option>
        <option value="4">9</option>
        <option value="5">10</option>
		
      </select></div>
     

            	<div class="form-group">
            	<input class="form-control"
                    type="text" name="SUBJECT" placeholder="LAB NAME (IN UPPER CASE)" required ></div>
                    
            	<div class="form-group">
            	<input class="form-control"  value="<?php echo date('d-m-Y');?>" readonly="readonly" name="DATE" required></div>
            	 <div class="form-group"> 
                <select name="TIME" class="form-control" required>
        <option value=""> TIME SLOT</option>
        <option value="8.30-10.30">8.30-10.30</option>
        <option value="10.30-12.30">10.30-12.30</option>
        <option value="12.30-2.30">12.30-2.30</option>
        <option value="2.30-4.30">2.30-4.30</option>
        <option value="4.30-6.30">4.30-6.30</option>
      </select></div>
     
            <div class="form-group">
            	<button class="btn btn-primary" type="submit" style="margin-left:140PX;" name="SUBMIT" >SUBMIT</button></div>
        </form>

        <?php
	            if(isset( $_POST["SUBMIT"])){
       
					$ROLL_NO= $_SESSION['RollNo'];
       
					 $LABNO=$_POST["LABNO"];
					 $PCNO=$_POST["PCNO"];
					$SUBJECT = $_POST["SUBJECT"];
					
					 $DATE=$_POST["DATE"];
					 $TIME=$_POST["TIME"];
					$query="insert into data12 values ('$ROLL_NO','$LABNO','$PCNO','$SUBJECT','$DATE','$TIME');";
					echo $query."<br>";
					$run=mysqli_query($conn,$query);
					if(isset($run)){                                     
						echo "<script>alert('successful');
						</script>";
						echo "<script>window.location.href='./menu12stu.php';</script>";	
					}  
				}
				?>

    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
</body>

</html>