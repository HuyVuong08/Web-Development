<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
    <?php
        $cars = array(12, -6, 6);
        sort($cars);

        echo "Acending: ";
        $clength = count($cars);
        for($x = 0; $x < $clength; $x++) {
          echo $cars[$x];
          echo ", ";
        }
        echo "<br>";

        rsort($cars);
        echo "Decending:  ";
        $clength = count($cars);
        for($x = 0; $x < $clength; $x++) {
          echo $cars[$x];
          echo ", ";
        }
        echo "<br>";

        echo "Max: ";
        echo max($cars), "<br>";
        echo "Min: ";
        echo min($cars);
    ?>
</body>
</html>
