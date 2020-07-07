<?php
session_start();
include 'koneksi.php';
require 'AES.php';

$AES = new AES();

$sql = "SELECT * FROM tbl_pelanggan";
$query = mysqli_query($koneksi, $sql);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aplikasi Enkripsi Dekripsi Mom Catering</title>
    <link rel="stylesheet" href="database.css">
    <link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
<div class="container">
        <div class = "sidebar">
            <header>Aplikasi Mom Catering</header>
            <ul>
                <li><a href="datapelanggan.php"><span class="fas fa-database"></span> Data Pelanggan</a></li>
                <li><a href="#"><span class="fas fa-file-alt"></span> Enkripsi</a></li>
                <li><a href="dekripsi.php"><span class="fas fa-file-alt"></span> Dekripsi</a></li>
                <li><a href="logout.php"><span class="fas fa-file-alt"></span> Logout</a></li>
            </ul>
        </div>
        <div id="tabel">
           <table border="1">
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Senin</th>
                    <th>Selasa</th>
                    <th>Rabu</th>
                    <th>Kamis</th>
                    <th>Jumat</th>
                    <th>Total</th>
                </tr>
            <?php
                while($database = mysqli_fetch_assoc($query)){
                    $no = $database["no"];
                    $nama = $AES->encrypt($database["nama"], "QWER");
                    $senin = $database["senin"];
                    $selasa = $database["selasa"];
                    $rabu = $database["rabu"];
                    $kamis = $database["kamis"];
                    $jumat = $database["jumat"];
                    $total = $database["total"];
                
                echo "<tr>
                    <td>$no </td>
                    <td>$nama</td>
                    <td>$senin </td>
                    <td> $selasa </td>
                    <td> $rabu </td>
                    <td> $kamis</td>
                    <td> $jumat </td>
                    <td> $total</td>
                </tr>";
                } 

                var_dump($nama);
                ?>  
           </table>
        </div>
    </div>    
</body>
</html>
