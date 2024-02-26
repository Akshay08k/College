<?php
if (isset($_POST['name'])) {
    $name = $_POST['name'];
    echo "<br>Hello Welcome To The Page : " . $name . "<br>";
}
if (isset($_POST['email'])) {
    $email = $_POST['email'];
    echo "<br>With The Email Id OF : " . $email . "<br>";
} 
