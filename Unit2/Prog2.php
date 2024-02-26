<?php
$con = mysqli_connect('localhost', 'root', '', );
echo "Connection Success";
$query = "Create database DB1";
mysqli_query($con, $query);

//Simple Program To Create Database into SQL check for localhost/phpmyadmin