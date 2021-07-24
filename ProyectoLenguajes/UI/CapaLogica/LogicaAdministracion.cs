using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ModuloAdministracion.CapaDatos;

namespace ModuloAdministracion.CapaLogica
{
    public class LogicaAdministracion
    {

        private DatosAdministracion datos = new DatosAdministracion();

        public List<Object[]> ListarPlatillo()
        {
            List<Object[]> resultado = new List<Object[]>();
            Object[] temp = new Object[6];
            List<Platillo> lista = datos.ListarPlatillo();

            foreach(Platillo i in lista)
            {
                temp = new Object[6];
                temp[0] = ("Consulta de cliente exitosa");
                temp[1] = i.Nombre;
                temp[2] = i.DescPlatillo;
                temp[3] = i.Precio;
                temp[4] = (i.Inhabilitado ? "Si" : "No");
                temp[5] = i.Foto;
                resultado.Add(temp);
            }
            
            return resultado;

        }


        public string[] BuscarPlatilloNombre(string nombre)
        {
            List<SearchFood_Result> list = datos.BuscarPlatilloNombre(nombre);

            if (list != null && list.Count() > 0)
            {

                string[] plato = new string[6];

                for (int i = 0; i < list.Count(); i++)
                {
                    plato[1] = list[i].NOMBRE;
                    plato[2] = list[i].Descripcion;
                    plato[3] = list[i].Precio + "";
                    plato[4] = list[i].Foto + "";
                    plato[5] = (list[i].Inhabilitado ? "Si" : "No"); 
                }

                plato[0] = "Consulta Existosa";
                return plato;
            }
            else
            {
                string[] plato = new string[1];
                plato[0] = "Datos No Encontrados";
                return plato;
            }
        }

        public bool VerificarPlatillo(string precio, byte[] img)
        {
            decimal d;
            int n;

            if (!Decimal.TryParse(precio, out d) && !Int32.TryParse(precio, out n))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool ValidarExtension(string ext)
        {
            if (System.IO.Path.GetExtension(ext).Equals(".png") || System.IO.Path.GetExtension(ext).Equals(".jpeg")
                        || System.IO.Path.GetExtension(ext).Equals(".gif") || System.IO.Path.GetExtension(ext).Equals(".xml")
                        || System.IO.Path.GetExtension(ext).Equals(".jpg") || System.IO.Path.GetExtension(ext).Equals(".PNG"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public string InsertarPlatillo(string nombre, string descripcion, string precio, byte[] img)
        {
            if (!BuscarP(nombre))//VerificarPlatillo(precio, img))
            {
                decimal n = ConvertirADecimal(precio);

                if (datos.InsertarPlatillo(nombre, descripcion, n, img))
                {
                    return "Introducción de nuevo Plato Existosa!";
                }

                return "Fallo al insertar, por favor verificar datos introducidos";

            }
            else
            {
                return "Ya se encuentra un Plato con ese nombre, por favor especifique otro";
            }

        }

        public string EliminarPlatillo(string nombre)
        {
            if (BuscarP(nombre))//VerificarPlatillo(precio, img))
            {

                if(datos.EliminarPlatillo(nombre))
                {


                    return "Platillo borrado de forma Existosa!";
                }

                return "Ha ocrurrido un error en la capa de datos al borrar el archivo";

            }
            else
            {
                return "El elemento que intenta borrar no existe";
            }
        
        }


        public string ModificarPlatillo(string nombre, string descripcion, string precio, byte[] img)
        {
            if (BuscarP(nombre))//VerificarPlatillo(precio, img))
            {
                decimal n = ConvertirADecimal(precio);

                if (datos.ModificarPlatillo(nombre, descripcion, n, img))
                {

                    return "Platillo modificado de forma Existosa!";

                }

                return "Ha ocrurrido un error en la capa de datos al modificar el archivo";

            }
            else
            {
                return "El elemento que intenta modificar no existe";
            }
        }

        public string Deshabilitar(string nombre, string s)
        {
            if (BuscarP(nombre))//VerificarPlatillo(precio, img))
            {
                if (datos.DeshabilitarPlatillo(nombre))
                {

                    return (s.Equals("Si") ? "No": "Si");

                }

                return "Error";

            }
            else
            {
                return "Error";
            }
        }

        public decimal ConvertirADecimal(string n)
        {
            return Decimal.Parse(n);
        }

        public bool BuscarP(string nombre)
        {
            List<SearchFood_Result> l = datos.BuscarPlatilloNombre(nombre);
            if (l != null && l.Count() > 0)
            {
                return true;
            }

            return false;
        }


        //-----------------------------------------------------------------------------------------

        public List<Object[]> ListarCuentas()
        {
            List<Object[]> resultado = new List<Object[]>();
            Object[] temp = new Object[7];
            List<Persona> lista = datos.ListarCuentas();

            foreach (Persona i in lista)
            {
                temp = new Object[7];
                temp[0] = ("Consulta de cliente exitosa");
                temp[1] = i.Nombre;
                temp[2] = i.Apellidos;
                temp[3] = i.Email;
                temp[4] = (i.RolID == 1 ? "Administrador" : "Cocina");
                temp[5] = i.Direccion;
                temp[6] = i.Inhabilitado;
                resultado.Add(temp);
            }

            return resultado;

        }


        public string[] BuscarEmail(string email)
        {
            List<SearchCount_Result> list = datos.BuscarEmail(email);

            if (list != null && list.Count() > 0)
            {

                string[] temp = new string[7];

                for (int i = 0; i < list.Count(); i++)
                {

                    temp[1] = list[i].Email;
                    temp[2] = list[i].Nombre;
                    temp[3] = list[i].Apellidos;
                    //temp[4] = list[i].Inhabilitado;
                    temp[4] = list[i].Rol + "";
                    temp[5] = list[i].Direccion;
                    
                }

                temp[0] = "Consulta Existosa";
                return temp;
            }
            else
            {
                string[] temp = new string[1];
                temp[0] = "Datos No Encontrados";
                return temp;
            }
        }

        public string InsertarCuenta(string email, string password, string nombre, string apellido, string direccion, int rol)
        {
            if (!BuscarC(email))//VerificarPlatillo(precio, img))
            {

                if (datos.InsertarCuenta(email, password, nombre, apellido, direccion, rol))
                {
                    return "Introducción de nuevo Plato Existosa!";
                }

                return "Fallo al insertar, por favor verificar datos introducidos";

            }
            else
            {
                return "Ya se encuentra un Usuario con ese nombre, por favor especifique otro";
            }

        }

        public string EliminarCuenta(string email)
        {
            if (BuscarC(email))//VerificarPlatillo(precio, img))
            {

                if (datos.EliminarCuenta(email))
                {


                    return "Platillo borrado de forma Existosa!";
                }

                return "Ha ocrurrido un error en la capa de datos al borrar el archivo";

            }
            else
            {
                return "El elemento que intenta borrar no existe";
            }

        }


        public string ModificarCuenta(string email, string password, string nombre, string apellido, string direccion, int rol)
        {
            if (BuscarC(email))//VerificarPlatillo(precio, img))
            {

                if (datos.ModificarCuenta(email, password, nombre, apellido, direccion, rol))
                {

                    return "Platillo modificado de forma Existosa!";

                }

                return "Ha ocrurrido un error en la capa de datos al modificar el archivo";

            }
            else
            {
                return "El elemento que intenta modificar no existe";
            }
        }

        public bool BuscarC(string email)
        {
            List<SearchCount_Result> l = datos.BuscarEmail(email);
            if (l != null && l.Count() > 0)
            {
                return true;
            }

            return false;
        }



        //-----------------------------------------------------------------------------------------

        public List<string[]> Filtrar(/**bool idCheck, string id, */string nombre, string apellido, DateTime bef, DateTime af, int estado)
        {

            int n = 0;
            string nam = nombre;
            string ap = apellido;

            /**if (id != null && id.Length != 0 && Int32.TryParse(id, out n))
            {
                n = Int32.Parse(id);
            }*/

            if (nombre == null || nombre.Length == 0 || nombre.Equals(""))
            {
                nam = null;
            }

            if (apellido == null || apellido.Length == 0 || apellido.Equals(""))
            {
                ap = null;
            }

            List<FilterPedido_Result> p = datos.Filtrar(/**n,*/ nam, ap, bef, af, estado);
            List<string[]> s = new List<string[]>();
            string[] temp = new string[7];

            if (p.Count() != 0){

                int e = 0;

                for(int i = 0; i < p.Count(); i++){

                    e = p[i].EstadoID - 1;

                    temp = new string[7];
                    temp[0] = "Datos Encontrados";
                    temp[1] = p[i].PersonaID + "";
                    temp[2] = p[i].DescPedido;
                    temp[3] = p[i].FechaPedido+"";
                    temp[4] = (e== 0 ? "A Tiempo" : e == 1 ? "Sobre Tiempo" : e == 2 ? "Demorado" : e == 3 ? "Anulado" : "Entregado");
                    temp[5] = p[i].PedidoID + ""; ;
                    s.Add(temp);

                }

                return s;

            }
            else
            {
                temp[0] = "No se encontraron datos";
                s.Add(temp);
                return s;
            }


        }

        public bool CheckDate(string day, string month, string year, string hour, string min)
        {
            DateTime temp;
            string s = year + "/" + month + "/" + day + " " + hour + ":" + min;
            if(DateTime.TryParseExact(s, "yyyy/MM/dd HH:mm", System.Globalization.CultureInfo.InvariantCulture
                , System.Globalization.DateTimeStyles.None, out temp))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public List<string[]> ListarPedidos()
        {
            List<string[]> resultado = new List<string[]>();
            string[] temp = new string[7];
            List<Pedido> lista = datos.ListarPedidos();

            int e = 0;

            foreach (Pedido i in lista)
            {
                e = (i.EstadoID - 1);

                temp = new string[7];
                temp[0] = "Datos Encontrados";
                temp[1] = i.PersonaID + "";
                temp[2] = i.DescPedido;
                temp[3] = i.FechaPedido + "";
                temp[4] = (e == 0 ? "A Tiempo" : e == 1 ? "Sobre Tiempo" : e == 2 ? "Demorado" : e == 3 ? "Anulado" : "Entregado");
                temp[5] = i.PedidoID + "";
                resultado.Add(temp);
            }

            return resultado;

        }

        public void ActualizarEstado(string id, int estado)
        {
            datos.ActualizarEstado(Int32.Parse(id), estado+1);
        }

        public int GetEstadoID(string s)
        {
            return (s.Equals("A Tiempo") ? 0 : s.Equals("Sobre Tiempo") ? 1 : s.Equals("Demorado") ? 2 : s.Equals("Anulado") ? 3 : 4);
        }


        public List<Object[]> ListarClientes()
        {
            List<Object[]> resultado = new List<Object[]>();
            Object[] temp = new Object[7];
            List<Persona> lista = datos.ListarClientes();

            foreach (Persona i in lista)
            {
                temp = new Object[7];
                temp[0] = ("Consulta de cliente exitosa");
                temp[1] = i.Nombre;
                temp[2] = i.Apellidos;
                temp[3] = (i.RolID == 3 ? "Cliente" : "Error");
                temp[4] = i.Email;
                temp[5] = i.Direccion; 
                temp[6] = (i.Inhabilitado ? "Si" : "No");

                resultado.Add(temp);
            }

            return resultado;

        }

        public void DeshabilitarCliente(string email)
        {
            datos.DeshabilitarCliente(email);
        }

        public string Tiempos(string t, string d)
        {
            if (CheckNumber(t) && CheckNumber(d))
            {
                datos.Tiempos(Int32.Parse(t), Int32.Parse(d));
                return "Tiempos de Estados Actualizados";
            }
            else
            {
                return "Digite solo numeros enteros";
            }
        }

        public bool CheckNumber(string n)
        {
            foreach(char c in n)
            {
                if(!Char.IsDigit(c))
                {
                    return false;
                }
            }

            return true;
        }

        public bool CheckDecimal(string n)
        {
            foreach (char c in n)
            {
                if (!Char.IsDigit(c) || !c.Equals('.'))
                {
                    return false;
                }
            }

            return true;
        }

        public bool SoloLetras(String s)
        {
            if (s != null && !s.Equals("")) {
                foreach (char c in s)
                {
                    if (!Char.IsLetter(c) && !c.Equals(' '))
                    {
                        return false;
                    }
                }
            }
            return true;
        }

    }
}
