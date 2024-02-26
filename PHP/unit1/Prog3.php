<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    if (isset($_POST["age"])) {
        $age = $_POST["age"];

        if ($age > 18) {
            echo "<h2>You can drive</h2>";
        } else {
            echo "<h2>You can't drive</h2>";
        }
    }
    if (isset($_POST["multiple"])) {
        switch ($_POST["multiple"]) {
            case 'Sunday':
                echo "<h3>yeapp it is sunday</h3>";
                break;
            case 'Monday':
                echo "<h3>oh no its monday work</h3>";
                break;
            case 'Tuesday':
                echo "<h3>damn its tuesday i have to submit project</h3>";
                break;
            case 'Wednesday':
                echo "<h3>are mori maiya bhudwar aagya</h3>";
                break;
        }
    }

    ?>
    <form method="post">
        <label for="age"> Please Enter age :
            <input type="text" name="age" id="age">
        </label>
        <br>
        <label for="dropdown">Select Any Day :</label>
        <select name="multiple" id="dropdown">
            <option value="Sunday">Sunday</option>
            <option value="Monday">Monday</option>
            <option value="Tuesday">TuesDay</option>
            <option value="Wednesday">Wednesday</option>
        </select>

        <input type="submit" value="Submit">
    </form>


</body>

</html>