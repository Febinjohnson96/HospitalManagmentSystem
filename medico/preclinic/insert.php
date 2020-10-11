<!-- department registration -->
<?php
if (isset($_POST['createDept'])) {
    $deptName=$_POST['deptName'];
    $deptStatus=['status'];
$sql = "INSERT INTO department (department_name, department_status)
VALUES ('$deptName','$deptStatus')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>
