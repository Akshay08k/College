<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Search</title>
</head>

<body>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <label for="pro_id">Enter Product ID:
            <input type="text" name="pro_id" id="pro_id">
        </label>
        <input type="submit" value="Search">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Process form data when form is submitted
        $pro_id = $_POST['pro_id'];

        $con = mysqli_connect('localhost', 'root', '', 'db1');

        // Use prepared statement to prevent SQL injection
        $query = "SELECT * FROM PRODUCTS WHERE Pro_id = '$pro_id'";
        $result = mysqli_query($con, $query);

        if ($result) {


            // Check if any rows were returned
            if ($row = mysqli_fetch_assoc($result)) {
                // Display product details
                echo "<br><br>";
                echo "Product ID: " . $row['Pro_id'] . "<br>";
                echo "Product Name: " . $row['Pro_name'] . "<br>";
                echo "Price: " . $row['Pro_price'] . "<br>";
                echo "Qoh: " . $row['QOH'] . "<br>";
            } else {
                echo "Product not found for ID: " . $pro_id;
            }
        } else {
            echo "Error: " . mysqli_error($con);
        }

        mysqli_close($con);
    }
    ?>
</body>

</html>