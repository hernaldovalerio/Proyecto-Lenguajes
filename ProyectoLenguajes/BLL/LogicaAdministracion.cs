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

        public string[] BuscarPlatillo(string nombre)
        {
            string[] resultado = new string[6];
            List<Platillo> lista = datos.BuscarPlatillo(nombre);

            resultado[0] = ("Consulta de cliente exitosa");
            resultado[1] = ("" + lista[0].Nombre);
            resultado[2] = (lista[0].DescPlatillo);
            resultado[3] = (lista[0].Precio+"");
            resultado[4] = (lista[0].Inhabilitado+"");
            resultado[5] = (lista[0].Foto+"");
            return resultado;

        }

    }
}
