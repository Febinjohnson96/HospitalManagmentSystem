<?php
//session_start();
include('connection.php');
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$patient_id = $_GET['pid'];
$appoinment_id= $_GET['appid'];

$status = "Inactive";

//fetchdata form mysql
$sql = "UPDATE `appoinment` SET `status`='$status' WHERE patient_id = '$patient_id ' and appoinment_id ='$appoinment_id'";

//$result = mysqli_query($conn, $sql);
//$row_count= mysqli_fetch_array($result);
if (mysqli_query($conn, $sql)) {

?>
<script>setTimeout(function(){location.href="docprofile.php"} , 0);   </script>
<?php
} else { ?>
<script> alert("SORRY Updation not done"); </script>
   
<?php echo "Error: " . $sql . "<br>" . mysqli_error($conn); }


?>
