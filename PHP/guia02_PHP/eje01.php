<?php

$num = rand(1,100);
if ($num <10){
    echo "El numero tiene un digito";
}elseif($num<100){
    echo "El numero tiene dos dígitos";
}else{
    echo "El número tiene 3 dígitos";
}


