using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModuloAdministracion.Entidades;
using ModuloAdministracion.CapaLogica;

namespace ModuloAdministracion
{
    public partial class Pedido : System.Web.UI.Page
    {
        private List<Orden> ordenes_cliente = null;
        private ClienteBLL clienteBLL = new ClienteBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            ordenes_cliente = Session["ordenes_cliente"] != null ? (List<Orden>)Session["ordenes_cliente"] : null;                        

            if (!IsPostBack)
            {
                if (ordenes_cliente == null || ordenes_cliente.Count() == 0)
                {
                    Lbl_ordenes.Text = "No tiene ninguna orden registrada";
                    Bttn.Visible = false;
                }
                else
                {
                    Lbl_ordenes.Text = "Tiene " + ordenes_cliente.Count + " ordenes registradas";
                    cargarOrdenes();                    
                }
                
            }

        }

        protected void Eliminar_Orden_Click(object sender, EventArgs e)
        {
            int index = int.Parse((sender as Button).CommandArgument);
            ordenes_cliente.RemoveAt(index-1);

            if(ordenes_cliente.Count() == 0)
            {
                Bttn.Visible = false;
            }
 
            Lbl_ordenes.Text = "La orden ha sido eliminada";
            cargarOrdenes();
        }


        protected void Cambiar_Orden_Click(object sender, EventArgs e)
        {
            int numero = int.Parse(((sender as Button).CommandArgument).ToString());

            Orden o = ordenes_cliente.ElementAt(numero-1);

            Session["Platillo"] = o.nombre;
            Session["Cantidad"] = o.cantidad;
            Session["Posicion"] = numero-1;
            Response.Redirect("Platillo.aspx");
        }

        protected void cargarOrdenes()
        {
            LstVw_OrdenesCliente.DataSource = ordenes_cliente;
            LstVw_OrdenesCliente.DataBind();
        }

        protected void EnviarPedido_Click(object sender, EventArgs e)
        {
            string descripcion_pedido = "";
            int linea_pedido = 0;

            foreach(Orden orden in ordenes_cliente){
                descripcion_pedido += orden.cantidad + " " + orden.nombre;
            }

            descripcion_pedido += " C: " + ((consideraciones_txt.Value == null || consideraciones_txt.Value.Equals("")) ? "" : consideraciones_txt.Value);

            string correo_electronico = Session["correo_electronico"].ToString();
            clienteBLL.AgregarPedido(correo_electronico, descripcion_pedido);

            foreach(Orden orden in ordenes_cliente)
            {
                linea_pedido++;
                clienteBLL.AgregarLineaPedido(linea_pedido, orden.nombre, orden.cantidad);
            }
            

            Session["Mensaje"] = "Su pedido ha sido enviado correctamente!";
            ordenes_cliente = null;
            Session["ordenes_cliente"] = null;
            LstVw_OrdenesCliente.Items.Clear();
            LstVw_OrdenesCliente.DataBind();
            Response.Redirect("PaginaPrincipal.aspx");
            
        }
    }
}