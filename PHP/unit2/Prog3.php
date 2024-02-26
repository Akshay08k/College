<?php
$con = mysqli_connect('localhost', 'root', '', 'db1');
echo "Connection Success";
$query = "CREATE TABLE PRODUCTS4(
    Pro_id int Auto_Increment Primary key,
    Pro_name varchar(100) not null,
    Pro_price int not null,
    QOH varchar(20) not null
    )";
$result = mysqli_query($con, $query);
if ($result = 1) {
    echo "<br><h3>Table created successFully</h3></br>";
}

//Check that Db1 already created in database than run the program 
//otherwise it will give error