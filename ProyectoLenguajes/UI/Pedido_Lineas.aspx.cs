using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModuloAdministracion.CapaLogica;

namespace ModuloAdministracion
{
    public partial class Pedido_Lineas : System.Web.UI.Page
    {

        public List<LineasPedido_Result> lista_Ordenes = null;
        private LogicaCocina bll = new LogicaCocina();
        public int pedidoID;
        protected void Page_Load(object sender, EventArgs e)
        {
            pedidoID = Int32.Parse(Session["Pedido_Lineas"].ToString());
            if (!IsPostBack)
            {
                lista_Ordenes = bll.ListarOrdenes(pedidoID);
                LVLineaPedidos.DataSource = lista_Ordenes;
                LVLineaPedidos.DataBind();
            }
        }

        protected void BtnDeliver_Click(object sender, EventArgs e)
        {
            bll.Entregar(pedidoID);
            Session["Pedido"] = (sender as Button).CommandArgument;
            Response.Redirect("Cocina.aspx");
        }
    }
}