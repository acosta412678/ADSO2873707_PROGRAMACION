<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   <div>
    <?php
         date_default_timezone_set('America/Bogota');
     $meses = [
        1 => 'enero',
        2 => 'febrero',
        3 => 'marzo',
        4 => 'abril',
        5 => 'mayo',
        6 => 'junio',
        7 => 'julio',
        8 => 'agosto',
        9 => 'septiembre',
        10 => 'octubre',
        11 => 'noviembre',
        12 => 'diciembre'
    ];
    $dia = date("d");
    $mes = $meses[date("n")];
    $año = date("Y");
    $hora = date("g:");
    $minutos = date("i A");

    echo "El día de hoy es: $dia, del mes $mes del año $año hora: $hora $minutos.";
    
    ?>
   </div> 
</body>
</html>