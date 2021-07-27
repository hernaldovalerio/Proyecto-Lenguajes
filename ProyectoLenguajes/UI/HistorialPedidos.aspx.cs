using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModuloAdministracion.CapaLogica;

namespace ModuloAdministracion
{
    public partial class HistorialPedidos : System.Web.UI.Page
    {
        private ClienteBLL clienteBLL = new ClienteBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            string correo_electronico = Session["correo_electronico"].ToString();
            List<PedidosCliente_Result> pedidos_cliente = clienteBLL.HistorialPedidos(correo_electronico);

            if (!IsPostBack)
            {
                LstVw_PedidosCliente.DataSource = pedidos_cliente;
                LstVw_PedidosCliente.DataBind();
            }
                        
        }
    }
}