#!/bin/bash

#note - I figured out the "should be" by copy and pasting the file into 
#word and removing all code blocks and block quotes to mimick the code

echo "running TEST 1 with simple md file should be 10"
echo "got: " 
php ../wordcount.php test1.md

echo "running TEST 2 with code blocks, should be 5"
php ../wordcount.php test2.md

echo "running TEST 3 with html tags, should be 14"
php ../wordcount.php test3.md

echo "running TEST 4 with our PL paper should be 1737"
echo "got: "
php ../wordcount.php https://raw.githubusercontent.com/joshfermin/PL/master/project/pep227.md

echo "running TEST 5 with  random MD file should be 423 "
echo "got: " 
php ../wordcount.php https://raw.githubusercontent.com/Zandrr/ProgrammingLanguages/master/lab3/README.md

