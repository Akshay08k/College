<?php
$Array = array(10, 9, 8, 7, 6, 5, 4, 3, 2, 1);
//To sort array in accesding order
for ($i = 0; $i < count($Array); $i++) {
    for ($j = 0; $j < count($Array) - 1; $j++) {
        if ($Array[$j] > $Array[$j + 1]) {      //Just change the Greater Than symbol to less than to change the order of sorting
            $temp = $Array[$j];
            $Array[$j] = $Array[$j + 1];
            $Array[$j + 1] = $temp;
        }
    }
}
echo "accending Order : <br>";
print_r($Array);
//To Sort array in decesding Order
for ($i = 0; $i < count($Array); $i++) {
    for ($j = 0; $j < count($Array) - 1; $j++) {
        if ($Array[$j] < $Array[$j + 1]) {
            $temp = $Array[$j];
            $Array[$j] = $Array[$j + 1];
            $Array[$j + 1] = $temp;
        }
    }
}
echo "<br>decending Order :<br>";
print_r($Array);


//Remeber It Modifies The Current Array It mean it changes The Original Array
//YOU CAN ALSO USE SORT FUNCTION TO SORT ARRAY IN ACCESSDING ORDER AND RSORT TO SORT ARRAY DESENDING ORDER

//using sort and asort function
