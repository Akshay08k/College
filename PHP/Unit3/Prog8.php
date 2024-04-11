<?php

$conn = mysqli_connect('localhost', 'root', 'ygiS', 'student');
// i Dont know why people use this when any error occured in connection mysqli_connect will self throw and 
// print an error message this message is never executed
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
