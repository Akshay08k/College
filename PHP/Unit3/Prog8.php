<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "student";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$stuId = $_POST['stuId'];
$sql = "SELECT * FROM student WHERE stuId = '$stuId'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "User Already Exists. Try another stuId";
} else {
    // Code to add data to the student table goes here
    $stuName = $_POST['stuName'];
    $mob = $_POST['mob'];
    $country = $_POST['country'];

    $insertSql = "INSERT INTO student (stuId, stu_name, mob, country) VALUES ('$stuId', '$stuName', '$mob', '$country')";

    if ($conn->query($insertSql) === TRUE) {
        echo "Student Added Successfully";
    } else {
        echo "Error: " . $insertSql . "<br>" . $conn->error;
    }
}

$conn->close();
