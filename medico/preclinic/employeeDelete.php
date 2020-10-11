<?php 
include('connection.php');
$tempId=$_GET['id'];
// sql to delete a record
if (isset($_POST['delete'])) 
{
	
$query = "DELETE FROM employee WHERE emp_id=$tempId";
if ($conn->query($query) === TRUE) 
{
    echo "Record deleted successfully";
} else 
{
    echo "Error deleting record: " . $conn->error;
}

$conn->close();
}
?>