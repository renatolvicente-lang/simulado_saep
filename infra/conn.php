<?php
$localhost = "localhost";
$username = "root";
$password = "";
$database = "farmacia";

$conn = new mysqli($localhost, $username, $password, $database);

if(!$conn){
    die ("erro ao tentar se conectar". $conn->mysqli_error());
}

?>