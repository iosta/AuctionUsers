<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Login</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="icon" href="img/camiseta-logo.png" type="image/png">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/login.css">
    <script src='main.js'></script>
</head>

<body>
    <div class="encuadre-informacion" id="login">
        <img class="index-img-icono-usuario" src="img/icono-usuario.png" alt="Icono de usuario">
        <h1 class="index-titulo">Login</h1>
        <div class="login-form">
            <form action="/autenticar" method="POST">
                <label for="index-username">Usuario</label>
                <input type="text" name="username" id="index-username" placeholder="Introduzca usuario" required>

                <label for="index-password">Contraseña</label>
                <input type="password" name="password" id="index-password" placeholder="Introduzca contraseña" required>
                <#if error>            
                    <h3 class="mensajeerror">Error, usuario o contraseña incorrectos.</h3>
                </#if>
                <input type="submit" class="index-submit" value="Ingresar">
            </form>
        </div>
    </div>
</body>

</html>