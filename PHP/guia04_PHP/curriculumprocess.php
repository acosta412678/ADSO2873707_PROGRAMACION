<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curriculum</title>
    <link rel="stylesheet" href="css/curriculum.css">
</head>
<body>
    <?php
        $nombre = isset($_POST['nombre'])? $_POST['nombre'] : null;
        $perfil = isset($_POST['perfil'])? $_POST['perfil'] : "";
        $experiencia = isset($_POST['experiencia'])? $_POST['experiencia'] : "";
        $cedula = isset($_POST['cedula'])? $_POST['cedula'] : "";
        $hobbies = isset($_POST['hobbies'])? $_POST['hobbies'] : "";
    ?>
</body>
</html>