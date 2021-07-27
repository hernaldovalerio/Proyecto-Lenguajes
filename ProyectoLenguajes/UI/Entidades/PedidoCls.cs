using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModuloAdministracion.Entidades
{
    public class PedidoCls
    {
        public int pedidoID { set; get; }
        public string descPedido { set; get; }
        public int estadoID { set; get; }
        public int personaID { set; get; }
        public DateTime fechaPedido { set; get; }
        public DateTime fechaEntrega { set; get; }
    }
}
