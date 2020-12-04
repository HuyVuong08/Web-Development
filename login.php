<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>Login Page</title>
</head>
<body>
    <?php
        include 'header.html';
        setcookie($cookie_name, $cookie_value, time() - (6400 * 30), "/");
    ?>
    <form action="login_processing.php" class="form">
        <div class="container">
            <fieldset class="border">
                <h1>LOGIN</h1>
                <p>Login to your account</p>
                
                <hr>
                
                <label for="username"><b>Username:</b></label>
                <input type="text" placeholder="Enter Username" name="username" id="username" required>
                
                <label for="password"><b>Password:</b></label>
                <input type="password" placeholder="Enter Password" name="password" id="password" required>
                
                <label for="gender">Gender:</label>
                <input type="radio" name="gender" value="Male" checked>
                <label for="male">Male</label>
                <input type="radio" name="gender" value="Female">
                <label for="female">Female</label>

                <hr>
                
                <button type="submit" class="login">Login</button>
            </fieldset>
        </div>
    </form>
</body>
</html>
