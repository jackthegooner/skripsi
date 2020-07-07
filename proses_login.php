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
            if($_POST["password"] == $row["password"]){
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