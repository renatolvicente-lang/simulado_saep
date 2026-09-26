<?php
$localhost = "localhost";
$username = "root";
$password = "";
$database = "farmacia";

$conn = new myslqi($localhost, $username, $password, $database);

if(!$conn){
    die "erro ao tentar se conectar". $conn->mysqli_error();
}

?>