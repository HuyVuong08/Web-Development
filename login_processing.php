<?php
    $hostname = 'localhost';
    $username = 'root';
    $password = 'abcdef1234';
    $databasename = 'music';

    $conn = mysqli_connect($hostname, $username, $password, $databasename);
    // Start the session
    session_start();
?>
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
        include 'user_header.html';
        $username = $_GET['username'];
        $password = $_GET['password'];

        $sql = "SELECT * FROM admin WHERE username = '$username' and password = '$password'";
        $result = $conn->query($sql);

        $data = $result->fetch_assoc();
        if ($password == $data[password]) 
        {

            $cookie_name = "user";
            $cookie_value = $username;
            if (!isset($_COOKIE[$cookie_name])) 
            {
                setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/");

                if ($username == "root" || $username == "admin") 
                {
                    echo "Hello Administator" . "<br>";
                } 
                else 
                {
                    echo "Hello User" . "<br>";
                }
            } 
            else 
            {
                echo "Welcomeback, $username";
            }
        } 
        else 
        {
            header("Location:login.php"); 
        }
    ?>
</body>
</html>
