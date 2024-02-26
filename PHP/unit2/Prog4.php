<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $id = $_POST['id'];
        $name = $_POST['name'];
        $price = $_POST['price'];
        $qoh = $_POST['Qoh'];
    }
    $con = mysqli_connect('localhost', 'root', '', 'db1');
    $query = "INSERT INTO PRODUCTS (Pro_id, Pro_name, Pro_price, QOH) VALUES ('$id','$name','$price','$qoh')";
    $result = mysqli_query($con, $query);
    if ($result) {
        echo "Data Inserted Successfully";
    } else {
        echo "Error: " . mysqli_error($con);
    }
    ?>
    <form method="post">
        <label for="id">Enter the Id :
            <input type="text" name="id" id="id">
        </label>
        <br><br>
        <label for="name">Enter the Product Name :
            <input type="text" name="name" id="name">
        </label>
        <br><br>
        <label for="price">Enter the Price :
            <input type="text" name="price" id="price">
        </label>
        <br><br>
        <label for="qoh">Enter the Qoh :
            <input type="text" name="Qoh" id="qoh">
        </label><br><br>
        <input type="submit" value="Submit">
    </form>


</body>

</html>