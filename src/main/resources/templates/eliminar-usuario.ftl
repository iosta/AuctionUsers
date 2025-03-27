<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Nota</title>
    <link rel="icon" href="img/camiseta-logo.png" type="image/png">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="encuadre-informacion">
        <header class="barra-navegacion">
            <nav>
                <ul>
                    <li><img class="imagen-usuario" src="/img/icono-usuario.png" alt="Icono de usuario">
                    </li>
                    <li>
                        <p class="texto-usuario">Cuenta de ${usuario}</p>
                    </li>
                    <li>
                        <a href="index.html" class="cerrar-sesion">
                            <p class="texto-cerrar-sesion">Cerrar <br> Sesión</p>
                            <div class="cerrar-sesion-div-img">
                                <img class="cerrar-sesion-img" src="/img/cerrar-sesion.png" alt="Cerrar sesión">
                            </div>
                        </a>
                    </li>
                </ul>
            </nav>
        </header>
        <h1 class="titulos">Eliminar la Nota</h1>

        <#if mensajeError?has_content>
            <div class="error">${mensajeError}</div>
        <#else>
            <#if usuario??>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <td>${usuario.nombre}</td>
                    </tr>
                    <tr>
                        <th>Rol</th>
                        <td>${usuario.rol}</td>
                    </tr>
                </table>
                <br/><br/>
            </#if>
                <form action="/eliminar-usuario/${usuario.nombre}" method="POST">
                    <a href="/todo" class="boton-usuarios-gestion">Volver a la lista</a>
                    <input type="submit" class="boton-usuarios-gestion" value="Confirmar"/>
                </form>
        </#if>
    </div>
</body>
</html>