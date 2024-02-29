<?php
$queryParam = $_REQUEST['q'];


echo !empty($queryParam) ? "Welcome " . strtoupper($queryParam) : "No Result Found";

