using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

namespace ModuloAdministracion.CapaDatos
{
    public class DatosAdministracion
    {

        private SqlConnection connextion;
        private string estado = "desconectado";
        //private DB_LinqDataContext linq = new DB_LinqDataContext();
        private DBA_IF4101_HHSMEntities entity = new DBA_IF4101_HHSMEntities();
         
        public DatosAdministracion()
        {
            enlazar();
        }

        public void enlazar()
        {
            try
            {
                //Se establece la conexion seguna la variable connectionString del archivo config del programa
                connextion = new SqlConnection();
                connextion.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                connextion.Open(); //establece conexion

                /**linq.Connection.ConnectionString = connextion.ConnectionString;
                linq.Connection.Open();*/

                estado = "conectado"; //conexion exitosa
            }
            catch (Exception ex)
            {
                estado = "desconectado"; //conexion fallida despues de usar conexion.open()
            }


        }

        public List<Platillo> ListarPlatillo()
        {
            //logica para buscar en la base de datos
            using (entity = new DBA_IF4101_HHSMEntities())
            {
                List<Platillo> busqueda = entity.Platillo.ToList();

                /**if (busqueda.Count() != 0)
                {
                    System.Diagnostics.Trace.Write("correcto");
                }
                else
                {
                    System.Diagnostics.Trace.Write("INcorrecto");
                }*/
                return busqueda;
            }

        }


        public List<SearchFood_Result> BuscarPlatilloNombre(string nombre)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {

                List<SearchFood_Result> result = entity.SearchFood(nombre).ToList();

                if (result != null && result.Count() > 0)
                {
                    return result;
                }
                else
                {
                    return null;
                }

            }
        }


        public bool InsertarPlatillo(string nombre, string descripcion, decimal precio, byte[] img)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {

                int n = entity.CreateFood(descripcion, nombre, precio, false, img);

                if (n > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
        }

        public bool EliminarPlatillo(string nombre)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {

                List<SearchFood_Result> result = entity.SearchFood(nombre).ToList();

                if (result != null && result.Count() > 0)
                {
                    int n = entity.DeleteFood(nombre);

                    if (n > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
                else
                {
                    return false;
                }

            }
        }

        public bool ModificarPlatillo(string nombre, string descripcion, decimal precio, byte[] img)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {

                List<SearchFood_Result> result = entity.SearchFood(nombre).ToList();

                if (result != null && result.Count() > 0)
                {

                    int n = entity.ModifyFood(descripcion, nombre, precio, result[0].Inhabilitado, img);

                    if (n > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
                else
                {
                    return false;
                }

            }
        }

        public bool DeshabilitarPlatillo(string nombre)
        {

            using (entity = new DBA_IF4101_HHSMEntities())
            {

                List<SearchFood_Result> result = entity.SearchFood(nombre).ToList();

                int i;

                if (result[0].Inhabilitado)
                {
                    i = entity.AbleFood(nombre);
                    return true;
                }
                else
                {
                    i = entity.DisableFood(nombre);
                    return true;
                }
                return false;
            }

        }


        //-----------------------------------------------------------------------------------------------------------------

        public List<Persona> ListarCuentas()
        {
            //logica para buscar en la base de datos
            using (entity = new DBA_IF4101_HHSMEntities())
            {
                List<Persona> busqueda = entity.Persona.ToList();

                /**if (busqueda.Count() != 0)
                {
                    System.Diagnostics.Trace.Write("correcto");
                }
                else
                {
                    System.Diagnostics.Trace.Write("INcorrecto");
                }*/
                return busqueda;
            }

        }


        public List<SearchCount_Result> BuscarEmail(string email)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {

                List<SearchCount_Result> result = entity.SearchCount(email).ToList();

                if (result != null && result.Count() > 0)
                {
                    return result;
                }
                else
                {
                    return null;
                }

            }
        }


        public bool InsertarCuenta(string email, string password, string nombre, string apellido, string direccion, int rol)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {

                int n = entity.CreateCount(email, nombre, apellido, direccion, password, false, rol);

                if (n > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
        }

        public bool EliminarCuenta(string email)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {

                List<SearchCount_Result> result = entity.SearchCount(email).ToList();

                if (result != null && result.Count() > 0)
                {
                    int n = entity.DeleteCount(email);

                    if (n > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
                else
                {
                    return false;
                }

            }
        }

        public bool ModificarCuenta(string email, string password, string nombre, string apellido, string direccion, int rol)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {

                List<SearchCount_Result> result = entity.SearchCount(email).ToList();

                if (result != null && result.Count() > 0)
                {

                    int n = entity.ModifyCount(email, nombre, apellido, direccion, password, false, rol);

                    if (n > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
                else
                {
                    return false;
                }

            }
        }

        //---------------------------------------------------------------------------------------------------
        public List<FilterPedido_Result> Filtrar(/**int id,*/ string nombre, string apellido, DateTime bef, DateTime af, int estado)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {

                List<FilterPedido_Result> l;

                /**if (id == 0 && bef.Year == 2000 && estado == 0)
                {
                    l = entity.FilterPedido(null, nombre, apellido, null, null, null).ToList();
                }
                else if (id == 0 && bef.Year == 2000)
                {
                    l = entity.FilterPedido(null, nombre, apellido, null, null, estado).ToList();
                }**/
                /*else*/ if (bef.Year == 2000 && estado == 0)
                {
                    l = entity.FilterPedido(null /*id*/, nombre, apellido, null, null, null).ToList();
                }
                /*else if (id == 0 && estado == 0)
                {
                    l = entity.FilterPedido(null, nombre, apellido, bef, af, null).ToList();
                }*/
                else if (bef.Year == 2000)
                {
                    l = entity.FilterPedido(null/*id*/, nombre, apellido, null, null, estado).ToList();
                }
                /*else if (id == 0)
                {
                    l = entity.FilterPedido(null, nombre, apellido, bef, af, estado).ToList();
                }*/
                else if (estado == 0)
                {
                    l = entity.FilterPedido(null/*id*/, nombre, apellido, bef, af, null).ToList();
                }
                else
                {
                    l = entity.FilterPedido(null/*id*/, nombre, apellido, bef, af, estado).ToList();
                }


                return l;

            }
        }

        public List<Pedido> ListarPedidos()
        {
            //logica para buscar en la base de datos
            using (entity = new DBA_IF4101_HHSMEntities())
            {
                List<Pedido> busqueda = entity.Pedido.ToList();

                /**if (busqueda.Count() != 0)
                {
                    System.Diagnostics.Trace.Write("correcto");
                }
                else
                {
                    System.Diagnostics.Trace.Write("INcorrecto");
                }*/
                return busqueda;
            }

        }

        public void ActualizarEstado(int pedido, int estado)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {
                entity.UpdateState(pedido, estado);
            }
        }


        public List<Persona> ListarClientes()
        {
            //logica para buscar en la base de datos
            using (entity = new DBA_IF4101_HHSMEntities())
            {
                List<Persona> busqueda = entity.Persona.Where(a => a.RolID.Value == 3).ToList();

                /**if (busqueda.Count() != 0)
                {
                    System.Diagnostics.Trace.Write("correcto");
                }
                else
                {
                    System.Diagnostics.Trace.Write("INcorrecto");
                }*/
                return busqueda;
            }

        }

        public void DeshabilitarCliente(string email)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {
                entity.BlockClient(email);
            }
        }

        public void Tiempos(int t, int d)
        {
            using (entity = new DBA_IF4101_HHSMEntities())
            {
                entity.UpdateTimes(t,d);
            }
        }

    }
}
