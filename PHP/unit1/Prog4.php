<?php
$Fruits = array('Apple', 'Banana', 'Grapes', 'Watermelon');
$length = count($Fruits);

//using for loop

for ($i = 0; $i < $length; $i++) {
    echo "<br>" . $Fruits[$i];
}
//using for each loop
foreach ($Fruits as $frut) {
    echo "<br>The Fruit Name Is : " . $frut;
}

//to create an array in php first just define any variable and use array() function to give value to them
//correction added for loopp also 
