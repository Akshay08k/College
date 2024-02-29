<?php
$queryParam = '';
$queryParam = $_REQUEST['q'];

echo !empty($queryParam) ? "You have select " . $queryParam . "Gender" : "No Result Found";
