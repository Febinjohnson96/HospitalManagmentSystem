<?php  
include('connection.php');
										$sql="SELECT doctor.doctor_name,doctor.doctor_id FROM doctor INNER JOIN department ON department.department_name = doctor.department WHERE department = '$department'";
//doctor.'$department'
									 // $sql = "SELECT doctor_name, doctor_id FROM doctor ;";  
 									$result = mysqli_query($conn, $sql); 
									echo "error:" . $sql. "<br>".mysqli_error($conn);
                          while($row = mysqli_fetch_array($result))  
                          {  
                          ?>  
                          
                               <option value="<?php echo $row['doctor_name'].",". $row['doctor_id'];?>"><?php echo $row['doctor_name'];?></option>"
							  
                               <?php echo "error:" . $sql. "<br>".mysqli_error($conn);?>
                           
                          <?php  
                          } 
                          ?>