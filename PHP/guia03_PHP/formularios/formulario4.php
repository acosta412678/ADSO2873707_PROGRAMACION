<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario 3</title>
    <link rel="stylesheet" href="css/">
</head>

<body>
    <section>
        <form method="POST" action="mostrardatos4.php"> 
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre" id="nombre" required>
            <br>

            <label for="cedula">Cédula:</label>
            <input type="number" name="cedula" id="cedula" required>
            <br>

            <label for="telefono">Teléfono:</label>
            <input type="number" name="telefono" id="telefono" required>
            <br>

            <label for="correo">Correo eléctronico:</label>
            <input type="email" name="correo" id="correo" required>
            <br>
            <h3>Estudios</h3>
            <div class="form-group">
                <label for="estudios">1- No tiene estudios</label>
                <input type="radio" name="radioOperacion" value="1">
            </div>
            <div class="form-group">
                <label for="estudios">2- Estudios primarios</label>
                <input type="radio" name="estudios" value="2">
            </div>
            <div class="form-group">
                <label for="estudios">3- Estudios Secundarios</label>
                <input type="radio" name="estudios" value="3">
            </div>
 
            <div class="from-group">
                <button type="submit">Enviar</button>
            </div>


            
        </form>
    </section>
</body>
</html>