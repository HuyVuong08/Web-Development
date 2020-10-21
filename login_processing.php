<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>Registration Form</title>
</head>
<body>
    <?php
        include 'header.html';
        $username = $_GET['username'];
        $password = $_GET['password'];
        echo "Username: $username" ;
        echo "<br>";
        echo "Password: $password" ;
    ?>
</body>
</html>
