using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ModuloAdministracion.CapaDatos;

namespace ModuloAdministracion.CapaLogica
{    
    
    public class PlatilloBLL
    {
        private PlatilloDAL platillDAL = new PlatilloDAL();
        public List<ListaPlatillos_Result> ListarPlatillos()
        {
            return platillDAL.ListarPlatillos();
        }

        public List<SearchFood_Result> BuscarPlatillo(string platillo)
        {
            return platillDAL.BuscarPlatillo(platillo).ToList();
        }
    }
}
