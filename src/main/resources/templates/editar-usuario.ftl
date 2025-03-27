<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Usuario</title>
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
            
        <h1 class="titulos">Editar Usuario</h1>

        <#if mensajeError?has_content>
            <div class="error">${mensajeError}</div>
        <#else>
            <form action="/editar-usuario/${usuario.nombre}" method="POST">
                <div class="container">
                    <div class="w25 center">
                        <#if usuario.nombre?has_content>
                            <label for="nombre" class="campo-texto-label">Nombre de Usuario</label>
                            <input type="text" class="introduccion-texto" name="nombre" value="${usuario.nombre}" disabled="disabled"/>
                        </#if>
                    </div>
                    <div class="w75">
                        <label for="rol" class="campo-texto-label">Rol</label>
                        <input type="text" class="introduccion-texto" id="rol" name="rol" value="${usuario.rol}" required/>
                    </div>
                    <div class="w75">
                        <label for="password" class="campo-texto-label">Nueva Contraseña</label>
                        <input type="password" class="introduccion-texto" id="password" name="password" placeholder="No cambiar!"/>
                    </div>
                </div>
                <br/>
                <button type="submit" class="boton-usuarios-gestion">Guardar Rol</button>
                <button type="submit" class="boton-usuarios-gestion">Guardar Contraseña</button>
                <a href="/todo" class="boton-usuarios-gestion">Regresar al listado</a>
            </form>
        </#if>
    </div>
</body>
</html>
