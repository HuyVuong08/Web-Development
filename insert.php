<?php
    $name = $_POST['name'];
    $year = $_POST['year'];
    $gender = $_POST['gender'];
    $servername = "localhost";
    $username = "root";
    $password = "abcdef1234";
    $databasename = "music";
    $url = "/spouse.com/database.php";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $databasename);

    // Check connection
    if ($conn->connect_error) 
    {
        die("Connection failed: " . $conn->connect_error);
    }
    if ($name != '' || $year != '' || $gender != '') 
    {
        $sql = "INSERT INTO singers (name, year_of_birth, gender)
        VALUES ('$name', '$year', '$gender')";
    }


    if ($conn->query($sql) === TRUE) 
    {
        echo "New record created successfully";
        header('Location:' . $url);
    } 
    else 
    {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
?> 
