<?php
$queryParam = $_REQUEST['q'];


echo !empty($queryParam) ? "Welcome " . $queryParam : "No Result Found";

