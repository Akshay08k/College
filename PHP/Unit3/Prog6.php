<?php

$inputFieldValue = isset($_GET['inputField']) ? $_GET['inputField'] : '';

if (strlen($inputFieldValue) < 5) {
    echo 'Server-side validation error: Input must have a minimum length of 5 characters.';
} elseif (strlen($inputFieldValue) > 5) {
    print_r('Server received: ' . $inputFieldValue);
} else {
    echo "nothing";
}