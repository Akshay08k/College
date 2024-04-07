<!DOCTYPE html>
<!-- Updated seprate both prograams if and else and switch case -->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form method="post">
        <label for="color">Enter Your Fav Color : </label>
        <input type="text" id="color" name="color">
        <input type="submit" value="Submit">
    </form>

    <?php

    if (isset($_POST['color'])) {
        $color = $_POST['color'];
        switch ($color) {
            case 'red':
                echo "Your choosen Color is red";
                break;
            case 'green':
                echo "Your choosen Color is green";
                break;
            case 'yellow':
                echo "Your choosen Color is yellow";
                break;
            case 'grey':
                echo "Your choosen Color is grey";
                break;
            case 'blue':
                echo "Your choosen Color is blue";
                break;
            default:
                echo "please enter valid color name";
                break;
        }
    }
    ?>

</body>

</html>