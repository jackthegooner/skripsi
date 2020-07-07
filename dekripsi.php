<?php
session_start();
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
    <?php
        if (isset($_GET['msg']) && strpos($_GET['msg'], 'otCorrect')) {
        echo '<div class="alert alert-warning">
    <strong>Warning!</strong> The Cipher Key must be 16 bytes.</div>';
        }
    ?>
<div class="container">
        <div class = "sidebar">
            <header>Aplikasi Mom Catering</header>
            <ul>
                <li><a href="datapelanggan.php"><span class="fas fa-database"></span> Data Pelanggan</a></li>
                <li><a href="enkripsi.php"><span class="fas fa-file-alt"></span> Enkripsi</a></li>
                <li><a href="#"><span class="fas fa-file-alt"></span> Dekripsi</a></li>
                <li><a href="logout.php"><span class="fas fa-file-alt"></span> Logout</a></li>
            </ul>
        </div>
        <div id="tabel">
           <table border="1">
           <form action="operasi.php" method="post">
           <tr>
                <td> 
                    <textarea class="form-control" name="plain_text" placeholder="Masukkan Encrypted Text..."></textarea>									
					<br>
					<input class="form-control" type="text" name="c_key" placeholder="Masukkan Cipher key ...">
					<br>
					<input type="submit" name="decrypt" class="btn btn-primary" value="Decrypt">
                </td>
            </tr>
            </form>

            <?php
				if (isset($_GET['var']) && isset($_GET['key'])) {

					echo '<div class="alert alert-warning col-md-8">
										    <strong>Cipher Key: </strong>'.$_GET['key'].'</div>';

					echo '<div class="alert alert-success col-md-8">
										    <strong>Decrypted Text: </strong>'.$_GET['var'].'</div>';
				}
			?>

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