<?php
session_start();

if(!isset($_SESSION["login"])){
    header("location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enkripsi</title>
    <link rel="stylesheet" href="enkripsi.css">
    <link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <div class="container">
        <input type="checkbox" id="check">
        <label for="check">
            <span class="fa fa-bars" id="btn"></span>
            <span class="fa fa-times" id="cancel"></span>
        </label>
        <div class = "sidebar">
            <header>Aplikasi Mom Catering</header>
            <ul>
                <li><a href="datapelanggan.php"><span class="fas fa-database"></span> Data Pelanggan</a></li>
                <li><a href="#"><span class="fas fa-file-alt"></span> Enkripsi</a></li>
                <li><a href="#"><span class="fas fa-file-alt"></span> Dekripsi</a></li>
            </ul>
                <!--<div id="center">
                    <input type="submit" value = "Enkripsi" name="enkripsi" class="enkripsi"> <br>
                    <input type="submit" value= "Dekripsi" name="dekripsi" class="dekripsi">
                </div> -->
        </div>

        <section></section>

    </div>

    
</body>
</html>