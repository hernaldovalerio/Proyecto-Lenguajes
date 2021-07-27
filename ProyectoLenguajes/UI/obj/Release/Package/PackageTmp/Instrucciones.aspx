<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Instrucciones.aspx.cs" Inherits="ModuloAdministracion.Instrucciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 20px; margin: 20px">




            <h1>Hola Beta Tester! </h1>

            Te escribe por este medio Miguel, un gusto contar contigo para esta prueba!
            <br />
            <br />
            La idea de este espacio es poder probar al maximo la aplicacion web, sometiendola a pruebas para detectar errores. Normalmente esto se haria entre grupo, pero, ¿teniendo una app que cualquiera puede ver y probar? es dificil no aprovechar esta oportunidad, ademas, es facil detectar errores si 10+ personas usan la aplicacion en vez de 4.
            <br />
            <br />
            Sin mas texto, les escribo las reglas y funcionalidades:<br />
            1-No agregen cuentas que tengan nombre problematicos, es en serio, el profe va a revisar esto y aunque podemos borrar esas cuentas, realmente lo que haces es darnos mas trabajo no solo a mi, sino a mi equipo.
            <br />
            2-Intenten en lo posible colocar informacion que pueda romper el sistema. La idea es que hagan uso normal de la aplicación pero que en parte tambien abusen de ella, por ejemplo, si intentan poner un numero en el nombre no deberia dejarlos. Si encuentran un problema, por favor notificarlo con una captura de pantalla de la pag web a cualquiera de nosotros.
            <br />
            3-La pagina web se divide en 3 dependiendo de la cuenta que tengas, normalmente solo pueden crear cuentas clientes, pero para los demas modulos simplemente soliciten una cuenta temporal a mi o a cualquiera de mis compañeros y se las daremos
            <br />
            <br />
            Ok ahora hablando un poco de los modulos:
            <br />
            <br />
            +Modulo de cliente:
            <br />
            -Eres cliente del restaurante, puedes ver el menu y ver la descripcion de un plato/comida, asi como "colocarla en un carrito" (es la pag que muestra una foto) y comprarla (Opcion Pedido de la barra de navegacion). Es posible cambiar tu informacion personal, pero al hacerlo debes cambiar la contraseña (es por seguridad) ademas, no puedes cambiar el correo.
            <br />
            <br />
            +Modulo de cocina:
            <br />
            -Eres un chef de nuestro restaurante. Esta es muy sencilla, son solo 2 interfaces, en la primera puedes ver las ordenes por entregar, en la segunda, puedes ver los detalles de esa orden y "Entregarla". Lo divertido de este modulo es que las ordenes se actualizan (sin refrescar la pagina) con el tiempo siempre y cuando esten en el estado A Tiempo o Sobre Tiempo, demorado nunca cambiara a no ser que se haga desde el modulo de administracion. El boton deshacer funciona solo 1 vez
            <br />
            <br />
            +Modulo de administración
            <br />
            -Probablemente el mas complejo. Aqui puedes agregar, eliminar, buscar (por nombres en plato y email en cuentas) y cambiar cosas de los otros modulos, aqui una lista resumida:
            <br />
            -Usuarios: administrar usuarios, puedes agregar, consultar, ingresar, "eliminar" y modificar un usuario. Cuando busques, si hay resultados, deberia cargar toda tu informacion. No deberia dejarte crear un cliente, solo admins y cocina
            <br />
            -Clientes: Una interfaz sencilla, solo bloqueas o desbloqueas clientes con un boton
            <br />
            -Pedidos: puedes ver todas las ordenes que han hecho los clientes (las que se compran en el Pedido del mod cliente). Puedes buscar por diferentes combinaciones de 3 filtros, intenta mezclarlos a ver que pasa! En modificar puedes cambiar el estado de un pedido (Y esto impactara el modulo principal de cocina y en tiempo real)
            <br />
            -Estados: estableces el tiempo en minutos para que cambie un estado de A Tiempo A Sobre Tiempo y de Sobre Tiempo a Demorado, impacta en que tan frecuente se actualiza un estado en el modulo de cocina
            <br />
            -Platos: Puedes añadir, buscar, eliminar, modificar e inhabilitar platos.
            <br />
            <br />
            Casi cada pag tienen tablas para que puedan ver reflejados los cambios
            <br />
            La pagina debe ser responsive (digamos, se ajusta al tamaño de la pantalla, ya sea que lo veas en pc o en movil), si hay alguna parte de la interfaz que se vea rara, mandar foto porque esto tambien se le considera como error
            <br />
            Cualquier mensaje de la interfaz que no deberia mostrarse en un momenrto dado es tambien un error, informar por favor.
            <br />
            <br />
            Tips para romper la pag:
            <br />
            -Poner numeros o letras donde no deberias, como en el nombre
            <br />
            -Dejar cambos en blanco y darle a todos los botones
            <br />
            -Ingresar muchisimo texto en alguno de los campos
            <br />
            -regresarte entre paginas
            <br />
            -buscar platos/nombres poniendo todo en mayusculas o todo minusculas o escribirlo de manera diferente a como lo ingresastes
            <br />
            -Los usuarios inhabilitados no pueden iniciar sesion, intenten usar uno (pueden inhabilitar una cuenta en el modulo admin si tienen acceso)
            <br />
            <br />
            Recuerden que la aplicacion puede ir cambiando, asi que pueden que existan mas opciones y/o funcionalidades
            <br />
            <br />
            Eso seria todo! Disculpen el mucho texto, ya pueden empezar las pruebas, muchas gracias de antemano!
            <br />
            -Miguel Egoavil
            <br />
            <br />

        </div>
        <div align="center">
            <a runat="server" type="button" class="btn btn-secondary" href="/InicioSesion.aspx">Iniciar Con la Prueba</a>
        </div>
        <br />
        <br />
    </form>
</body>
</html>
