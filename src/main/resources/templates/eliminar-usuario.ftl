<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Nota</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
</head>
<body>
<div class="encuadre-informacion">
<h1>Eliminar la Nota</h1>
<a href="/todo">Volver a la lista</a>
<br/><br/>

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
        ¿Seguro que desea eliminar la nota?
        <input type="submit" value="Confirmar"/>
    </form>
</#if>
</div>
</body>
</html>