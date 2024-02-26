<?php
$myArray = array(2, 4, 5, 6, 4, 2, 4, 8, 4, 10, 4);
$specificValue = 4;

$count = 0;

foreach ($myArray as $element) {
    if ($element == $specificValue) {
        $count++;
    }
}

echo "The specific value $specificValue appears $count times in the array.";


//simple af 

