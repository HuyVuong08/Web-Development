<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
    <?php
        include 'header.html';
        setcookie($cookie_name, $cookie_value, time() - (6400 * 30), "/");
        echo "welcome to our home page!";
    ?>
</body>
</html>
