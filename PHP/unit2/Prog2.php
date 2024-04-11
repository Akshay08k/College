<?php
use LDAP\ResultEntry;

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
$query = "CREATE DATABASE PHPTest";

$result = mysqli_query($con, $query);

// Execute the query
if ($result) {
    echo "Database created successfully";
    echo $result;
} else {
    echo "Error creating database: ";
    echo "this is the reason" . $result;

}

// Close connection
mysqli_close($con);