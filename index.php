<?php
    if (isset($_GET['page']))
    {
        $page = $_GET['page'];
        include "$page.php";
    }
    if (isset($_POST['page']))
    {
        $page = $_POST['page'];
        include "$page.php";
    }
?>
