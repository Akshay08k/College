<?php
$con = mysqli_connect('localhost', 'root', '', 'PHPtest');
if ($con->connect_error) {
    echo "Error while connecting to database";
}
echo "Connection Success";
$query = "CREATE TABLE PRODUCTS4(
    Pro_id int Auto_Increment Primary key,
    Pro_name varchar(100) not null,
    Pro_price int not null,
    QOH varchar(20) not null
    )";
$result = mysqli_query($con, $query);
//the mysqli_query() function returns one if operation successful otherwise return error
// so if result == 1 than the operation is successfull
if ($result == 1) {
    echo "<br><h3>Table created successFully</h3></br>";
} else {
    echo "<br><h3>Some Error Occured</h3>";
}

//Check that Db1 already created in database than run the program 
//otherwise it will give error