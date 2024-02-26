#!/bin/bash

echo "101 Alice 78" > student
echo "102 Bob 85" >> student
echo "103 Charlie 72" >> student
echo "104 David 92" >> student
echo "105 Emily 65" >> student

echo "a. Contents of the file sorted by marks in descending order:"
sort -k3,3nr student

echo -e "\nb. Names of students in alphabetical order (case-insensitive):"
sort -k2,2f student | awk '{print $2}'

echo -e "\nc. Students according to their roll numbers:"
sort -k1,1n student

echo -e "\nd. Sort file according to the second field and save it to file 'names':"
sort -k2,2 student > names

echo -e "\ne. List of students who scored between 70 and 80:"
awk '$3 >= 70 && $3 <= 80' student
