<?php
ini_set('display_errors', 1);
error_reporting(~0);

//error_reporting(E_ALL);

include_once('db.php');
$username = $_POST['username'];
$password = $_POST['password'];


$sql = "SELECT Username, Password FROM auths where Username='".$username."' and Password='".$password."'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
        echo "<h1>Welcome to the future: " . $row["Username"]."!!!</h1>";
  }
} else {
  echo "<h2>Incorrect Username and password</h2>";
}





// Check if user exists
//$query = "SELECT * FROM auth WHERE username='$username' AND password='$password'";
//$result = $conn->query($query);

//if ($result->num_rows == 1) {
  //  echo "Login successful!";
//} else {
  //  echo "Login failed. Please check your username and password.";
//}

//$conn->close();

?>
