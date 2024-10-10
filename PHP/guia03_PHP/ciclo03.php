<?php
//Doo ... While
// Mostrar los números de los dás del 1 a la 
//fecha actual

$diaActual = date ("d");
$ini = 1;
do {
    print($ini."<br>");
    $ini++;
} while ($ini<=$diaActual);