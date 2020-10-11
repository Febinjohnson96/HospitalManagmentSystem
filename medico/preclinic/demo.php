<?php
 include('connection.php');
if (isset($_POST['submit'])) {

    $sql = "INSERT INTO new (c_name, place) 
    VALUES
    ($_POST[c_name],$_POST[place])";
    echo "Droplet Successfully Added!";

}
?>

<form action="" method="post">
    Name: <br /><textarea name="c_name"></textarea><br /><br />
    Place: <br /><textarea name="place"></textarea><br /><br />
    image: <input type="file" name="file">
    <input type = "submit" name="submit" id="submit"/>
</form>