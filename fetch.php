<?php
    $hostname = 'localhost';
    $username = 'root';
    $password = 'abcdef1234';
    $databasename = 'music';

    $connect = mysqli_connect($hostname, $username, $password, $databasename);
    $output = '';
    if(isset($_POST["query"]))
    {
        $search = mysqli_real_escape_string($connect, $_POST["query"]);
        $query = "
        SELECT * FROM singers 
        WHERE Name LIKE '%".$search."%'
        OR Year_of_Birth LIKE '%".$search."%' 
        OR Gender LIKE '%".$search."%'
        ";
    }
    else
    {
        $query = "
        SELECT * FROM singers ORDER BY ID";
    }
    $result = mysqli_query($connect, $query);
    if(mysqli_num_rows($result) > 0)
    {
        $output .= '<div class="table-responsive">
                        <table class="table table bordered">
                            <tr>
                                <th>Name</th>
                                <th>Year_of_Birth</th>
                                <th>Gender</th>
                            </tr>';
        while($row = mysqli_fetch_array($result))
        {
            $output .= '
                <tr>
                    <td>'.$row["Name"].'</td>
                    <td>'.$row["Year_of_Birth"].'</td>
                    <td>'.$row["Gender"].'</td>
                </tr>
            ';
        }
        echo $output;
    }
    else
    {
        echo 'Data Not Found';
    }
?>
