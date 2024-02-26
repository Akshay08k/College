<?php
$StudentData = array(
    $student1 = array(
        "name" => "Akshay",
        "age" => 20,
    ),
    $student2 = array(
        "name" => "Mukund",
        "age" => 23,
    ),
    $student3 = array(
        "name" => "Hiral",
        "age" => 22,
    ),
);

echo "<br>Name of student : " . $StudentData[0]['name'];
echo "<br>Age Of Student : " . $StudentData[0]['age'];
echo "<br>Name of student : " . $StudentData[1]['name'];
echo "<br>Age Of Student : " . $StudentData[1]['age'];
echo "<br>Name of student : " . $StudentData[2]['name'];
echo "<br>Age Of Student : " . $StudentData[2]['age'];