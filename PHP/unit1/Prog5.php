<?php
$student = array(
    "name" => "Akshay",
    "age" => 20,
    "city" => "Ahmedabad",
    "Degree" => "MCA",
);
// echo "Name : " . $student['name'] . "<br>";
// echo "Age : " . $student['age'] . "<br>";
// echo "City : " . $student['city'] . "<br>";
// echo "Degree : " . $student['Degree'] . "<br>";

foreach ($student as $stud => $value):
    echo $stud . " is " . $value . "<br>";
endforeach;
//remeber Array Key Means Json type data Easy 