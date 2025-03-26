<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Editar Usuario</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
</head>
<body>

<h1>Editar Usuario</h1>
<a href="/todo">Regresar al listado</a>
<br/><br/>

<#if mensajeError?has_content>
    <div class="error">${mensajeError}</div>
<#else>
    <div class="encuadre-informacion">
    <form action="/editar-usuario/${usuario.nombre}" method="POST">
        <div class="container">
            <div class="w25 center">
                <#if usuario.nombre?has_content>
                    <label for="nombre">Nombre de Usuario</label>
                    <input type="text" name="nombre" value="${usuario.nombre}" disabled="disabled"/>
                </#if>
            </div>
            <div class="w75">
                <label for="rol">Rol</label>
                <input type="text" id="rol" name="rol" value="${usuario.rol}" required/>
            </div>
            <div class="w75">
                <label for="password">Nueva Contraseña</label>
                <input type="password" id="password" name="password" placeholder="Dejar en blanco para no cambiar"/>
            </div>

        </div>
        <br/>
        <button type="submit">Guardar Cambios</button>
    </form>
    </div>
</#if>

</body>
</html>
