<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form method="post">
        <label for="id">Enter The Product Id To Delete:
            <input type="text" name="id" id="id">
        </label>
        <input type="submit" value="submit">
    </form>
    <?php
    $con = mysqli_connect('localhost', 'root', '', 'db1');

    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        $id = $_POST['id'];

        $query = "DELETE FROM PRODUCTS WHERE Pro_id = '$id'";
        $result = mysqli_query(
            $con,
            $query
        );

        if ($result) {
            echo "Data Deleted successfully!";
        } else {
            echo "Error updating data: " . mysqli_error($con);
        }
    }
    ?>
</body>

</html>