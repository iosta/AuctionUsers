<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú</title>
    <link rel="icon" type="image/x-icon" href="/imgs/icons/favicon.ico">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="encuadre-informacion">
        <header class="barra-navegacion">
            <nav>
                <ul>
                    <li><img class="imagen-usuario" src="img/icono-usuario.png" alt="Icono de usuario">
                    </li>
                    <li>
                        <p class="texto-usuario">Cuenta de Admin</p>
                    </li>
                    <li>
                        <a href="index.html" class="cerrar-sesion">
                            <p class="texto-cerrar-sesion">Cerrar <br> Sesión</p>
                            <div class="cerrar-sesion-div-img">
                                <img class="cerrar-sesion-img" src="img/cerrar-sesion.png" alt="Cerrar sesión">
                            </div>
                        </a>
                    </li>
                </ul>
            </nav>
        </header>
        <table id="notas">
            <tr>
                <th>ID</th>
                <th>Título</th>
                <th>Actualizar</th>
                <th>Eliminar</th>
            </tr>
            <#list usuarios as usr>
                <tr>
                    <td><a href="${'nota/' + usr.nombre}" class="boton">${usr.nombre}</a></td>
                    <td>${usr.rol!""}</td>
                    <td><a href="${'edita-nota/' + usr.nombre}">Editar</a></td>
                    <td><a href="${'elimina-nota/' + usr.nombre}">Borrar</a></td>
                </tr>
            </#list>
        </table>
    </div>
</body>
</html>