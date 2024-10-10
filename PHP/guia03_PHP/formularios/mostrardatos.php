<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados</title>
    <link rel="stylesheet" href="css/mostrardatos.css">
</head>

<body>
    <div class="background-overlay"></div>
    <section class="info-box">
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $nombre = $_POST['nombre'];
            $email = $_POST['email'];
            $telefono = $_POST['telefono'];
            $ciudad = $_POST['ciudad'];
            $fecha_nacimiento = $_POST['fecha_nacimiento'];

            $fecha_actual = new DateTime();
            $fecha_nacimiento = new DateTime($fecha_nacimiento);
            $edad = $fecha_actual->diff($fecha_nacimiento)->y;

            echo "<h2>Información del Usuario</h2>";
            echo "<p>Nombre: " . $nombre . "</p>";
            echo "<p>Email: " . $email . "</p>";
            echo "<p>Teléfono: " . $telefono . "</p>";
            echo "<p>Ciudad: " . $ciudad . "</p>";
            echo "<p>Edad: " . $edad . " años</p>";

            if ($edad < 18) {
                echo "<p class='minor'>Es menor de edad</p>";
            } else {
                echo "<p class='adult'>Es mayor de edad</p>";
            }
        }

        ?>
    </section>
</body>
</html>