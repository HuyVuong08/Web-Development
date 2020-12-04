<?php
// Start the session
session_start();
?>
<!DOCTYPE html>
<html>
<body>
    <?php
        // Include header
        include 'user_header.html';

        // Set session variables
        $_SESSION["user"] = "Administrator";

        // Echo session variables that were set on previous page
        echo "Hello " . $_SESSION["user"] . ".<br>";
    ?>
</body>
</html> 
