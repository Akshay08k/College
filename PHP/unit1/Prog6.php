<?php
$StudentData = array(
    $student1 = array(
        "Name" => "Akshay",
        "Age" => 20,
    ),
    $student2 = array(
        "Name" => "Mukund",
        "Age" => 23,
    ),
    $student3 = array(
        "Name" => "Hiral",
        "Age" => 22,
    ),
);


foreach ($StudentData as $students) {
    echo "<hr>";

    foreach ($students as $stud => $value) {
        echo $stud . " = " . $value . "<br>";
    }
}
