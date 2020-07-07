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
        <form action="proses_login.php" method="POST">
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

