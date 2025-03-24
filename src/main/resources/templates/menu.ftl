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
    <div class="main-container">
        <#if isAdministrator>
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
        <hr>
        <div class="titulo">
            <a href="index.html" class="volver">
                <img class="imagen-volver" src="img/volver-atras.png" alt="Volver">
                <p class="texto-volver">Volver</p>
            </a>
            <h1 class="menu-usuario-titulo">Menú</h1>
        </div>
        <div class="botones-menu">
            <a href="productosadmin.html">
                <p>Ver productos</p>
                <img class="imagenes-menu-usuario" src="img/ver-productos.png" alt="Imagen de ver pujas">
            </a>
            <a href="ofrecidosadmin.html">
                <p>Ver productos ofertados</p>
                <img class="imagenes-menu-usuario" src="img/ofrecer-productos.png" alt="Imagen de ver productos ofertados">
            </a>
            <a href="#">
                <p>Resetear catálogo</p>
                <img class="imagenes-menu-usuario" src="img/resetear-productos.png" alt="Imagen de resetear catálogo">
            </a>
            <a href="historialadmin.html">
                <p>Historial ganadores</p>
                <img class="imagenes-menu-usuario" src="img/ver-historial-pujas.png" alt="Imagen de historial ganadores">
            </a>
            <a href="pujasadmin.html">
                <p>Pujas Recientes</p>
                <img class="imagenes-menu-usuario" src="img/pujas-recientes.png" alt="Imagen de Pujas Recientes">
            </a>
            <a href="gestionarusuarios.html">
                <p>Gestionar Usuarios</p>
                <img class="imagenes-menu-usuario" src="img/gestion-usuarios.png" alt="Imagen de Gestion de Usuarios">
            </a>
            <a href="index.html">
                <p>Salir</p>
                <img class="imagenes-menu-usuario" src="img/salir.png" alt="Imagen de exit">
            </a>
        </div>
            </div>
        <#else>
            <div class="encuadre-informacion">
        <header class="barra-navegacion">
            <nav>
                <ul>
                    <li><img class="imagen-usuario" src="img/icono-usuario.png" alt="Icono de usuario">
                    </li>
                    <li>
                        <p class="texto-usuario">Cuenta de Usuario</p>
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
        <hr>
        <div class="titulo">
            <a href="index.html" class="volver">
                <img class="imagen-volver" src="img/volver-atras.png" alt="Volver">
                <p class="texto-volver">Volver</p>
            </a>
            <h1 class="menu-usuario-titulo">Menú</h1>
        </div>
        <div class="botones-menu">
            <a href="productosusuario.html">
                <p>Ver productos y pujar</p>
                <img class="imagenes-menu-usuario" src="img/ofrecer-productos.png" alt="Imagen de ver productos">
            </a>
            <a href="ofrecerproducto.html">
                <p>Ofrecer productos</p>
                <img class="imagenes-menu-usuario" src="img/ver-productos.png" alt="Imagen de ofrecer productos">
            </a>
            <a href="historialpujasusuario.html">
                <p>Ver historial pujas</p>
                <img class="imagenes-menu-usuario" src="img/ver-historial-pujas.png" alt="Imagen de ver historial">
            </a>
            <a href="index.html">
                <p>Salir</p>
                <img class="imagenes-menu-usuario" src="img/salir.png" alt="Imagen de exit">
            </a>
        </div>
    </div>
        </#if>
    </div>
</body>
</html>