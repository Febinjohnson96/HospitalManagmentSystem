<?php
   include('connection.php');
   session_start();
    $_SESSION['loged'] = "false";
  // $_SESSION['id'] = 0;
  if(isset($_POST['login'])) {
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($conn,$_POST['usrName']);
      $mypassword = mysqli_real_escape_string($conn,$_POST['passWord']); 
	  $role = $_POST['role'];
	  
	  
if($role == "Employee"){
    
        $sql = "SELECT * FROM employee WHERE userName = '$myusername' and password = '$mypassword'";
      $result = mysqli_query($conn,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
     
	  $count = mysqli_num_rows($result);
   
      if($count == 1) {
         
		  $_SESSION['logged']=true;
		   $_SESSION ['username']=$row['empName'];
		   $_SESSION['id'] = $row['emp_id'];
		  echo "<script>location='emploprofile.php'</script>";
      }else { echo "<script type='text/javascript'>alert('Your Login Name or Password is invalid')</script>";
			echo "<script>location='login.html'</script>";
      }
     }elseif($role == "Doctor"){
            
	  $sql = "SELECT * FROM doctor WHERE userName = '$myusername' and pass = '$mypassword'";
      $result = mysqli_query($conn,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
     
	  $count = mysqli_num_rows($result);
   
      if($count == 1) {
         
		  $_SESSION['logged']=true;
		   $_SESSION ['username']=$row['doctor_name'];
		   $_SESSION['id'] = $row['doctor_id'];
		  echo "<script>location='docprofile.php'</script>";
      }else { echo "<script type='text/javascript'>alert('Your Login Name or Password is invalid')</script>";
			echo "<script>location='login.html'</script>";
      }
        }elseif($role =="Patient"){
		      $sql = "SELECT * FROM patient WHERE username = '$myusername' and pssword = '$mypassword'";
      $result = mysqli_query($conn,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
     
	  $count = mysqli_num_rows($result);
   
      if($count == 1) {
         
		  $_SESSION['logged']=true;
		   $_SESSION ['username']=$row['patient_name'];
		   $_SESSION['id'] = $row['patient_id'];
		  echo "<script>location='userprofile.php'</script>";
      }else { echo "<script type='text/javascript'>alert('Your Login Name or Password is invalid')</script>";
			echo "error:" . $sql. "<br>".mysqli_error($conn);
      }
        }else{echo "inavalid";}
   }
    
?>