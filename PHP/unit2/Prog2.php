<?php
// Database connection parameters
$hostname = 'localhost';
$username = 'root'; // assuming this is the correct username
$password = ''; // assuming there's no password set

// Connect to MySQL server
$con = mysqli_connect($hostname, $username, $password);

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

echo "Connection Success<br>";

// Create database query
$query = "CREATE DATABASE IF NOT EXISTS DB1";

// Execute the query
if (mysqli_query($con, $query)) {
    echo "Database created successfully";
} else {
    echo "Error creating database: " . mysqli_error($con);
}

// Close connection
mysqli_close($con);
?>