using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatosAdministracion;

namespace CapaLogicaAdministracion
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
                temp[3] = i.Precio + "";
                temp[4] = i.Inhabilitado + "";
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
                temp[1] = i.Email;
                temp[2] = i.Nombre;
                temp[3] = i.Apellidos;
                temp[4] = i.Inhabilitado;
                //temp[5] = i.Rol+"";
                temp[6] = i.Direccion;
                resultado.Add(temp);
            }

            return resultado;

        }


        public string[] BuscarEmail(string email)
        {
            List<SearchCount_Result> list = datos.BuscarEmail(email);

            if (list != null && list.Count() > 0)
            {

                string[] temp = new string[6];

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
                string[] plato = new string[1];
                plato[0] = "Datos No Encontrados";
                return plato;
            }
        }

        public string InsertarCuenta(string email, string password, string nombre, string apellido, string direccion, int rol)
        {
            if (!BuscarP(nombre))//VerificarPlatillo(precio, img))
            {

                if (datos.InsertarCuenta(email, password, nombre, apellido, direccion, rol))
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

        public string EliminarCuenta(string email)
        {
            if (BuscarP(email))//VerificarPlatillo(precio, img))
            {

                if (datos.EliminarPlatillo(email))
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
            if (BuscarP(nombre))//VerificarPlatillo(precio, img))
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


    }
}
