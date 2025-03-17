
<h2 id="API">API</h2>


| # | Protocol<br/>Command |                Paths                 | Session read              | Form<br/>Params        |    Controller     | Conditions                                     | Templates / Redirects           |            Model put            | Session write                    |
|--:|:--------------------:|:------------------------------------:|:--------------------------|:-----------------------|:-----------------:|:-----------------------------------------------|---------------------------------|:-------------------------------:|:---------------------------------|
| 0 |         GET          | / <br/>/login <br/>/error <br/>/exit |                           |                        |      iniciar      |                                                | login.ftl                       |         username,error          | invalidate                       |
| 1 |         POST         |             /autenticar              |                           | username <br/>password |    autenticar     | -!authenticated<br/>-else                      | login.ftl<br/>/menu             |      username,error <br/>.      | . <br/>username, isAdministrator |
| 2 |         GET          |                /menu                 | username, isAdministrator |                        |    mostrarMenu    | -username null<br/>-else                       | /error<br/>/menu.ftl            |     .<br/> isAdministrator      |                                  |
| 3 |         POST         |        /admin/user-management        | username, isAdministrator |                        | gestionarUsuarios | -username null<br/>-!isAdministrator<br/>-else | /error<br/>/error<br/>/todo.ftl |      .<br/>.<br/>username       |                                  |
| 4 |         GET          |               /admin/*               |                           |                        |      iniciar      |                                                | login.ftl                       |          username,error         |                                  |
| 5 |         POST         |               /admin/*               |                           |                        |      iniciar      |                                                | login.ftl                       |          username,error         |                                  |
