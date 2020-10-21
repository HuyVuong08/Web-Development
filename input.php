<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="input.css">
    <title>Input to Music Database, Singers Table</title>
</head>
<body>
    <form action="./insert.php" method="post" class="form"> 
        <div class="container">
            <fieldset class="border">
                <h1>SINGER</h1>
                <p>Fill in singer's information</p>

                <hr>

                <label for="name"><b>Name:</b></label>
                <input type="text" placeholder="Name of singer" id="name" name="name" required>

                <label for="year"><b>Year of Birth:</b></label>
                <input type="number" placeholder="Year of birth" id="year" name="year" required>

                <label for="gender">Gender:</label>
                <input type="radio" name="gender" value="Male" checked>
                <label for="male">Male</label>
                <input type="radio" name="gender" value="Female">
                <label for="female">Female</label>

                <hr>

                <button type="submit" class="submit">Submit</button>
            </fieldset>
        </div>
    </form>
</body>
</html>
