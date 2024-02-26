<?php
function Hello()
{
    echo "Hello From Non Parameterized Function <br> <br>";
}
function CustomHello($firstname, $lastname)
{
    echo "Hello " . $firstname . " " . $lastname;
}

Hello();
CustomHello("akshay", "Komale");