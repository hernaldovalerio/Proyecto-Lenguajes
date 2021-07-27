using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModuloAdministracion.CapaDatos
{
    public class PlatilloDAL
    {
        private DBA_IF4101_HHSMEntities dBA_IF4101_HHSM = new DBA_IF4101_HHSMEntities();

        public List<ListaPlatillos_Result> ListarPlatillos()
        {
            return dBA_IF4101_HHSM.ListaPlatillos().ToList();
        }

        public List<SearchFood_Result> BuscarPlatillo(string platillo)
        {
            return dBA_IF4101_HHSM.SearchFood(platillo).ToList();
        }
    }
}
