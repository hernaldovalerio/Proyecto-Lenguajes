using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModuloAdministracion.CapaLogica;

namespace ModuloAdministracion
{
    public partial class Cocina : System.Web.UI.Page
    {

        public List<ActiveOrders_Result> lista_Ordenes = null;
        private LogicaCocina bll = new LogicaCocina();
        int pedidoID;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Pedido_Lineas"]!=null)
                {
                    pedidoID = Int32.Parse(Session["Pedido_Lineas"].ToString());
                }
                else
                {
                    pedidoID = 0;
                }
                
            }
            catch (NullReferenceException) {
                pedidoID = 0;
            }




            //if (!IsPostBack) {
                CargarDatos();
            //}
        }

        private void CargarDatos() {
            lista_Ordenes = bll.ListarPedidos();

            if(lista_Ordenes.Count() > 10)
            {
                warning.Text = "Hay mas datos de los que se muestran...";
                warning.Attributes.CssStyle.Add("color", "red");
            }

            LVPedidos.DataSource = lista_Ordenes;
            LVPedidos.DataBind();
        }

        protected void VerOrden_Click(object sender, EventArgs e)
        {
            Session["Pedido_Lineas"] = (sender as Button).CommandArgument;
            Response.Redirect("Pedido_Lineas.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (pedidoID != 0)
            {
                bll.Deshacer(pedidoID);
                CargarDatos();
            }
            else {
                Mensaje.Visible = true;
            }
        }

        public string RowColor(Object o)
        {
            string s = o.ToString();

            if (s.Equals("A Tiempo"))
            {
                return "background-color: lightgreen;";
            }
            else if (s.Equals("Sobre Tiempo"))
            {
                return "background-color: lightgoldenrodyellow";
            }
            else
            {
                return "background-color: lightcoral";
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            bll.ActualizarEstados();

            return;
        }

        protected void BtnDeliver_Click(object sender, EventArgs e)
        {
            bll.Entregar(Int32.Parse((sender as Button).CommandArgument));
            Session["Pedido_Lineas"] = (sender as Button).CommandArgument;
            Response.Redirect("Cocina.aspx");
        }

    }
}