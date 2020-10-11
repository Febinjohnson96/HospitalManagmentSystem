<?php
   include("connection.php");
   session_start();
   
      // username and password sent from form 
	    $_SESSION['loged'] = "false";
  // $_SESSION['id'] = 0;
  if(isset($_POST['login'])) {
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($conn,$_POST['usrName']);
      $mypassword = mysqli_real_escape_string($conn,$_POST['passWord']); 
      
      $sql = "SELECT * FROM admin WHERE adminUsrName = '$myusername' and adminPass = '$mypassword'";
      $result = mysqli_query($conn,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
         	  $_SESSION['logged']=true;
		   $_SESSION ['username']=$row['adminName'];
		   $_SESSION['id'] = $row['admin_id'];
		  echo "<script>location='adminprofile.php'</script>";
      }else { echo "<script type='text/javascript'>alert('Your Login Name or Password is invalid')</script>";
			echo "error:" . $sql. "<br>".mysqli_error($conn);
      }
      }
?>