<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post">
        <br>
        <label for="name">Enter The Name : <input type="text" name="name" id="name"></label><br> <br>
        <label for="email">Enter The Email : <input type="email" name="email" id="email"></label> <br> <br>
        <input type="submit" value="Submit">
    </form>
    <?php
    if (isset($_POST['name'])) {
        $name = $_POST['name'];
        echo "<br>Hello Welcome To The Page : " . $name . "<br>";
    }
    if (isset($_POST['email'])) {
        $email = $_POST['email'];
        echo "<br>With The Email Id OF : " . $email . "<br>";
    }
    ?>
</body>

</html>