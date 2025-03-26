package edu.masanz.da.au.controller;

import edu.masanz.da.au.service.AuctionService;
import edu.masanz.da.au.dto.*;

import edu.masanz.da.au.utils.Security;
import io.javalin.http.Context;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MainController {

    // app.get("/", MainController::iniciar);
    // app.get("/login", MainController::iniciar);
    // app.get("/error", MainController::iniciar);
    // app.get("/exit", MainController::iniciar);
    public static void iniciar(Context context) {
        context.req().getSession().invalidate();
        Map<String, Object> model = new HashMap<>();
        model.put("username", "");
        model.put("error", false);
        context.render("/templates/login.ftl", model);
    }

    // app.post("/autenticar", MainController::autenticar);
    public static void autenticar(Context context) {
        String username = null;
        String password = null;
        boolean authenticated = false;
        boolean isAdministrator = false;
        try {
            username = context.formParam("username").trim();
            password = context.formParam("password");
            authenticated = AuctionService.autenticar(username, password);
            if (authenticated) {
                isAdministrator = AuctionService.esAdmin(username);
            }
        }catch (Exception e) {
        }
        Map<String, Object> model = new HashMap<>();
        if (!authenticated) {
            model.put("username", username);
            model.put("error", true);
            context.render("/templates/login.ftl", model);
        }else {
            context.sessionAttribute("username", username);
            context.sessionAttribute("isAdministrator", isAdministrator);
            context.req().changeSessionId();
            context.redirect("/menu");
        }
    }

    //app.get("/menu", MainController::mostrarMenu);
    public static void mostrarMenu(Context context) {
        String username = context.sessionAttribute("username");
        if (username == null) {
            context.redirect("/error");
            return;
        }
        boolean isAdministrator = context.sessionAttribute("isAdministrator");
        Map<String, Object> model = new HashMap<>();
        model.put("isAdministrator", isAdministrator);
        model.put("username", username);
        context.render("/templates/menu.ftl", model);
    }

    //app.post("/admin/user-management", MainController::gestionarUsuarios);
    public static void gestionarUsuarios(Context context) {
        String username = context.sessionAttribute("username");
        if (username == null) {
            context.redirect("/error");
            return;
        }
        boolean isAdministrator = context.sessionAttribute("isAdministrator");
        if (!isAdministrator) {
            context.redirect("/error");
            return;
        }

        List<Usuario> usuarios = AuctionService.obtenerUsuarios();

        Map<String, Object> model = new HashMap<>();
        model.put("username", username);
        model.put("usuarios", usuarios);
        context.render("/templates/todo.ftl", model);
    }

    public static void servirEliminarUsuario(Context context) {
        String nombreUsuario = context.pathParam("name");
        Map<String, Object> model = new HashMap<>();
        Usuario usuario = AuctionService.obtenerUsuario(nombreUsuario);
        if (usuario == null) {
            model.put("mensajeError", "Usuario no encontrada");
            context.render("templates/eliminar-usuario.ftl", model);
            return;
        }
        model.put("usuario", usuario);
        context.render("templates/eliminar-usuario.ftl", model);
    }


    public static void eliminarUsuario(Context context){
        String nombreUsuario = context.pathParam("name");
        if (AuctionService.eliminarUsuario(nombreUsuario)) {
            context.redirect("/todo");
        }else {
            context.redirect("/error");
        }
    }

    public static void servirEditarUsuario(Context context){
        String nombreUsuario = context.pathParam("name");
        Map<String, Object> model = new HashMap<>();
        Usuario usuario = AuctionService.obtenerUsuario(nombreUsuario);
        if (usuario == null) {
            model.put("mensajeError", "Usuario no encontrado");
            context.render("templates/editar-usuario.ftl", model);
            return;
        }
        model.put("usuario", usuario);
        context.render("templates/editar-usuario.ftl", model);
    }

    public static void editarUsuario(Context context){
        String nombreUsuario = context.pathParam("name");
        String rol = context.formParam("rol");
        String password = context.formParam("password");
        if (AuctionService.modificarRolUsuario(nombreUsuario, rol)) {
            if (password != null && !password.isEmpty()) {
                if (AuctionService.modificarPasswordUsuario(nombreUsuario, password)) {
                    context.redirect("/todo");
                } else {
                    context.redirect("/error");
                }
            } else {
                context.redirect("/todo");
            }
        } else {
            context.redirect("/error");
        }
    }

}
