<!-- department registration -->
<?php
include('connection.php');
if (isset($_POST['submit'])) {
       $deptName=$_POST['deptName'];
        $deptStatus=['deptstatus'];
     $sql = "INSERT INTO department (department_name, department_status) VALUES ('$deptName','$deptStatus')";
    
    if ($conn->query($sql)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    }
?>