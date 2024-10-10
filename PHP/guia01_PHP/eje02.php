<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <?php
        $dia = date("d");
        $fecha_actual = date("Y-m-d");
        $dia_semana = date("l"); 

        echo "Fecha actual: $fecha_actual";
        echo "<br><br>";
        echo "Día de la semana: Lunes ";
        echo "<br><br>";

        if ($dia <= 10) {
            echo "Estado: sitio activo";
            echo "<ul>
                    <li>Actividad 1: Revisión de contenido</li>
                    <li>Actividad 2: Actualización de sistema</li>
                  </ul>";
        } else {
            echo "Estado: sitio fuera de servicio";
            echo "<ul>
                    <li>Actividad 1</li>
                    <li>Actividad 2</li>
                  </ul>";
        }
        ?>
    </div>
</body>

</html>
