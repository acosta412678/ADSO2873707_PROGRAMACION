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
            if ($dia <= 10) {
                echo "Sitio activo";
            } else {
                echo "Sitio fuera de servicio";
            }
        ?>
    </div>
    <div>
        <?php
        echo "
        <script>
        alert('Hola mundo');
        </script>"
        ?>
    </div>
    <div>
        <?php
        echo "<p> ADSO </p>" ;
        ?>
    </div>
    <section>
        <?php
        echo '<input type="text"> Nombre';
        echo "<br>";
        echo '<input type="text"> Apellido';
        echo "<br>";
        echo '<input type="email"> Correo';
        echo "<br>";
        echo '<input type="password"> Contraseña';
        ?>
    </section>
    <div>
        <?php
        $date = date("d-m-y");
        echo "Fecha del dia de hoy $date"
        ?>
    </div>
</body>

</html>