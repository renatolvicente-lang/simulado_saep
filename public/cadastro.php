<?php
include "../infra/conn.php";


if($_SERVER["REQUEST_METHOD"] == "POST"){
    $nome = $_POST["nome"];
    $email = $_POST["email"];

    $sql = "INSERT INTO funcionarios VALUES nome='$nome', email='$email'";

    if($conn->query($sql)){
        $_SESSION["nome"] = $nome;
        header("Location: home.php");
        exit();
    }else{
        echo "não foi possivel preparar a consulta";
    }
}

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <header>
        <h1>Cadastra TU aqui</h1>
    </header>
    <form action="" method="POST">
        <div>
            <label for="nome">Nome</label>
            <input type="text" name="nome" required>
        </div>
        <div>
            <label for="email">email</label>
            <input type="email" name="email" required>
        </div>
        <button type="submit">enviar</button>
    </form>
</body>
</html>