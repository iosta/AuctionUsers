<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú</title>
    <link rel="icon" href="img/camiseta-logo.png" type="image/png">
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
                        <p class="texto-usuario">Cuenta de ${username}</p>
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
                <th><p class="th">ID</p></th>
                <th><p class="th">Rol</p></th>
                <th><p class="th">Actualizar</p></th>
                <th><p class="th">Eliminar</p></th>
            </tr>
            <#list usuarios as usr>
                <tr>
                    <td>${usr.nombre}</td>
                    <td>${usr.rol!""}</td>
                    <td><a href="/editar-usuario/${usr.nombre}" class="gestion-usuario-boton">Editar</a></td>
                    <td><a href="/eliminar-usuario/${usr.nombre}" class="gestion-usuario-boton">Borrar</a></td>
                </tr>
            </#list>
        </table>
    </div>
</body>
</html>