<?php
   session_start();
   
   if(session_destroy()) {
  
  echo "<script>location='adminLogin.html'</script>";
      //header("Location: login.php");
   }
?>