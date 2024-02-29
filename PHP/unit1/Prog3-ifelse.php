<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form method="post">
        <label for="age">Enter Your Age: </label>
        <input type="text" name="age" id="age">
        <input type="submit" value="Submit">
    </form>
</body>
<?php
if (isset($_POST['age'])) {
    $age = $_POST['age'];
    if ($age > 18) {
        echo "<h3 style='color:green'>You can drive";
    } else {
        echo "<h3 style='color:red'>You can't drive";
    }
}
?>


</html>