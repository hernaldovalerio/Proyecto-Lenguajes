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

namespace CapaDatosAdministracion
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

        public List<Platillo> BuscarPlatillo(string nombre)
        {
            //logica para buscar en la base de datos
            using (entity = new DBA_IF4101_HHSMEntities())
            {
                List<Platillo> busqueda = entity.Platillo.Where(s => s.Nombre == nombre).ToList();
                if (busqueda.Count() != 0)
                {
                    System.Diagnostics.Trace.Write("correcto");
                }
                else
                {
                    System.Diagnostics.Trace.Write("INcorrecto");
                }
                    return busqueda;
            }

        }

    }
}
