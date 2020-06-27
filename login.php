<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Login</title>
</head>
<body>
    <div class="center">
        <h1>Login</h1>
        <form action="" method="POST">
            <div class="text_field">
                <input type="text" name="username" id="textfield" required>
                <span></span>
                <label for="textfield">Username</label>
            </div>
            <div class="text_field">
                <input type="password" name="password" id="password" required>
                <span></span>
                <label for="password">Password</label>
            </div>
            <div class="submit">
                <input type="submit" value="login" name="login" >
            </div>
        </form>       
    </div>
</body>
</html>

<?php

include 'koneksi.php';

session_start();

if (isset($_POST["login"])) {

    $username = $_POST["username"];
    $password = $_POST["password"];

    $query = mysqli_query($koneksi, "SELECT * FROM user WHERE username = '$username' ");
    
    //cek username
    if(mysqli_num_rows($query) === 1){

        $row = mysqli_fetch_assoc($query);
            if(password_verify($password, $row["password"])){
                $_SESSION["login"] = true;
                header("Location: home.php");
            }else {
                echo "<script language=\"JavaScript\">\n";
                echo "alert('Username atau Password Salah!');\n";
                echo "window.location='index.php'";
                echo "</script>";
            }
        
    }
}

?>