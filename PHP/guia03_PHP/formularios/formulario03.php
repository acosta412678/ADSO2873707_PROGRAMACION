<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario 3</title>
    <link rel="stylesheet" href="css/formulario03.css">
</head>

<body>
    <section>
        <form method="POST" action="mostrardatos.php"> <label for="nombre">Nombre:</label>
            <input type="text" name="nombre" id="nombre" required>
            <br>

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required>
            <br>

            <label for="telefono">Teléfono:</label>
            <input type="number" name="telefono" id="telefono" required>
            <br>

            <label for="ciudad">Seleccione su ciudad:</label>
            <select name="ciudad" id="ciudad" required>
                <option value="">Seleccione su ciudad</option>
                <option value="Manizales">Manizales</option>
                <option value="Bogotá">Bogotá</option>
                <option value="Medellín">Medellín</option>
                <option value="Cali">Cali</option>
                <option value="Cartagena">Cartagena</option>
                <option value="Barranquilla">Barranquilla</option>
                <option value="Pereira">Pereira</option>
                <option value="Pasto">Pasto</option>
                <option value="Bucaramanga">Bucaramanga</option>
                <option value="Santa Marta">Santa Marta</option>
            </select>
            <br>

            <label for="fecha_nacimiento">Fecha de nacimiento</label>
            <input type="date" name="fecha_nacimiento" id="fecha_nacimiento" required>
            <br>

            <button type="submit">Enviar</button>
        </form>
    </section>
</body>
</html>