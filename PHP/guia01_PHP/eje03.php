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

    $dia = date('d');
    $mes = date('F');
    $año = date('Y');
    $hora = date('g');
    $minutos = date('i');
    $periodo = date('a');

    $meses = [
        "January" => "enero",
        "February" => "febrero",
        "March" => "marzo",
        "April" => "abril",
        "May" => "mayo",
        "June" => "junio",
        "July" => "julio",
        "August" => "agosto",
        "September" => "septiembre",
        "October" => "octubre",
        "November" => "noviembre",
        "December" => "diciembre"
    ];

    $mes = $meses[$mes];

    echo "Hoy es $dia de $mes de $año y son las $hora:$minutos$periodo";
    ?>
    </div>
</body>
</html>