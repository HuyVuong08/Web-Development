<?php
    $hostname = 'localhost';
    $username = 'root';
    $password = 'abcdef1234';
    $databasename = 'music';

    $conn = mysqli_connect($hostname, $username, $password, $databasename);
    $sql = "SELECT * FROM singers";
    $result = $conn->query($sql);
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="database.css">
    <title>Music Database Singer Table</title>
</head>
<body>
    <table class="table" id="singers">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Year of Birth</th>
                <th>Gender</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <?php
            while ($row = $result->fetch_assoc()) {
            ?>
                <tr>
                    <td><?php echo $row['ID'] ?></td>
                    <td><?php echo $row['Name'] ?></td>
                    <td><?php echo $row['Year_of_Birth'] ?></td>
                    <td><?php echo $row['Gender'] ?></td>
                    <td><button class="button" id="btn_delete"></button></td>
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
    <a href="./input.php" class="button" id="btn_add">ADD MORE</a>
</body>
</html>

<?php
$conn->close();
?>
