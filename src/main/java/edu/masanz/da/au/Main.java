package edu.masanz.da.au;

import edu.masanz.da.au.controller.MainController;
import io.javalin.Javalin;
import io.javalin.rendering.template.JavalinFreemarker;

public class Main {

    public static void main(String[] args) {

        Javalin app = Javalin.create(config -> {
            config.staticFiles.add("/public");
            config.fileRenderer(new JavalinFreemarker());
        }).start(4567);

        app.get("/", MainController::iniciar);
        app.get("/login", MainController::iniciar);

        app.get("/error", MainController::iniciar);
        app.get("/exit", MainController::iniciar);

        app.get("/menu", MainController::mostrarMenu);
        app.post("/autenticar", MainController::autenticar);

        app.post("/gestion-usuarios", MainController::gestionarUsuarios);
        app.get("/gestion-usuarios", MainController::gestionarUsuarios);

        app.get("/admin/*", MainController::iniciar);
        app.post("/admin/*", MainController::iniciar);

        app.get("/eliminar-usuario/{name}", MainController::servirEliminarUsuario);
        app.post("/eliminar-usuario/{name}", MainController::eliminarUsuario);

        app.get("/editar-usuario/{name}", MainController::servirEditarUsuario);
        app.post("/editar-usuario/{name}", MainController::editarUsuario);
    }

}