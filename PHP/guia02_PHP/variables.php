<?php
    // PHP
    // - Lenguaje del lado Servidor 
    // - Debilmente tipado

    $nombre = "Luis Miguel"; // Vble cadena
    $peso = 62.9; // Vbke decimal 
    $estado = true; // Vble booleana
    $dia = 9; // Int

    $estadoTxt = ($estado)?"Activo":"Inactivo";
    if($estado==true){
    }else {
        $estadoTxt = "Inactivo";
    }

    echo "Nombre: $nombre <br>
    Peso: $peso<br>
    Estado: $estadoTxt<br>
    Día: $dia
    ";
    
    $nombre = 123;
    echo "<br>$nombre";

    $arrayFrutas = ["Manzana","Pera", "Mango", "Piña"];
    echo "<pre>";
    print_r($arrayFrutas);
    "</pre>";