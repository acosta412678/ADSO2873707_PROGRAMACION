<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curriculum Vitae</title>
    <link rel="stylesheet" href="css/curriculum.css">
</head>

<body>
    <section class="form-container">
        <h2>Curriculum Vitae</h2>
        <form method="POST" action="curriculumprocess.php">
            <div class="form-group">
                <div class="label-info"><label for="nombre">Nombre</label></div>
                <div class="input-info"><input type="text" name="nombre" id="nombre" required></div>


            </div>
            <div class="form-group">
                <div class="label-info"> <label for="nombre" class="titulo">Perfil</label></div>
                <div class="textarea-info1"><textarea name="perfil" id="perfil" cols="30" rows="10" required></textarea></div>
            </div>
            </div>
            <div class="form-group">
                <div class="label-info"><label for="nombre" class="titulo">Experiencia</label></div>
                <div class="textarea-info2"><textarea name="experiencia" id="experiencia" cols="30" rows="10"
                        required></textarea></div>
            </div>
            <div class="form-group">
                <div class="label-info"><label for="nombre">Cedula</label></div>
                <div class="input-info"><input type="file" name="cedula" id="cedula" required></div>
            </div>



            <div class="form-group">
                <div class="label-info"><label for="hobbies" class="titulo">Hobbies</label></div>
                <div class="fieldset-info">
                    <fieldset>
                        <label>
                            <input type="checkbox" name="hobbie[]" value="leer">Leer
                            <input type="checkbox" name="hobbie[]" value="programar">Programar
                        </label>
                        <br>
                        <label>
                            <input type="checkbox" name="hobbie[]" value="comer">Comer
                            <input type="checkbox" name="hobbie[]" value="gimnasio">Gimnasio
                        </label>
                        <br>
                        <label>
                            <input type="checkbox" name="hobbie[]" value="caminar">Caminar
                            <input type="checkbox" name="hobbie[]" value="videojuego">Videojuego
                        </label>
                        <br>
                        <label>
                            <input type="checkbox" name="hobbie[]" value="deporte">Deporte
                            <input type="checkbox" name="hobbie[]" value="musica">Musica
                        </label>
                    </fieldset>
                </div>
            </div>
            </div>

            <button type="submit">Enviar</button>
        </form>
    </section>
</body>

</html>