using ModuloAdministracion.CapaLogica;
using ModuloAdministracion.CapaDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;
using ModuloAdministracion.Entidades;
using System.Windows;

namespace ModuloAdministracion
{

    public partial class Platillo : System.Web.UI.Page
    {
        //CLienteBLL
        private ClienteBLL clienteBLL = new ClienteBLL();
        private PlatilloBLL PlatilloBLL = new PlatilloBLL();

        //Platillo
        int numero_orden;
        string platillo = "";
        float precio = 0;
        short cantidad = 0;        

        protected void Page_Load(object sender, EventArgs e)
        {
            platillo = Session["Platillo"].ToString();

            List<SearchFood_Result> sa = PlatilloBLL.BuscarPlatillo(platillo);

            /*
            if (IsPostBack)
            {
                Response.Redirect("PaginaPrincipal.aspx");
            }
            */

            Lbl_Platillo.Text = sa[0].NOMBRE;
            Lbl_DescPlatillo.Text = sa[0].Descripcion;
            precio = (float)sa[0].Precio;
            Lbl_precio.Text = "¢" + sa[0].Precio;            
            Byte[] imagen_bytes = sa[0].Foto; 

            if (imagen_bytes != null)
            {
                string img = Convert.ToBase64String(imagen_bytes);
                Img_Platillo.ImageUrl = String.Format("data:image;base64,{0}", img);
            }

            if(Session["Cantidad"] != null)
            {
                //n_cantidad.Value = Session["Cantidad"].ToString();
            }

            mensaje_lbl.Text = "";

        }

        protected void Regresar_Click(object sender, EventArgs e)
        {
            Session["Mensaje"] = "";
            if (Session["Cantidad"] != null)
            {
                Session["Cantidad"] = null;
                mensaje_lbl.Text = "";
                Response.Redirect("Pedidos.aspx");
            }
            mensaje_lbl.Text = "";
            Response.Redirect("PaginaPrincipal.aspx");
        }
                    
        protected void AgregarOrden_Click(object sender, EventArgs e)
        {

            foreach (char c in n_cantidad.Value)
            {
                if (!Char.IsDigit(c))
                {
                    mensaje_lbl.Text = "Solo numeros";
                    mensaje_lbl.Attributes.CssStyle.Add("color", "red");
                    return;
                }
            }

            if(Int32.Parse(n_cantidad.Value) <= 0)
            {
                mensaje_lbl.Text = "0 es un valor no permitido";
                mensaje_lbl.Attributes.CssStyle.Add("color", "red");
                return;
            }

            if (Session["Cantidad"] != null)
            {
                List<Orden> temp = (List<Orden>)Session["ordenes_cliente"];
                temp[Int32.Parse(Session["Posicion"].ToString())].cantidad = Int16.Parse(n_cantidad.Value);

                Session["ordenes_cliente"] = temp;
                Session["Cantidad"] = null;
                Session["Posicion"] = null;
                Response.Redirect("Pedidos.aspx");
                return;
            }

            List<Orden> ordenes_cliente = Session["ordenes_cliente"] != null ? (List<Orden>)Session["ordenes_cliente"] : new List<Orden>();

            if(Session["NumeroOrden"] == null)
            {
                numero_orden = 0;
            }
            else
            {
                numero_orden = int.Parse(Session["NumeroOrden"].ToString());
            }
            // Numero de orden
            
            numero_orden++;

            // Obteniendo la cantidad de la orden
            cantidad = short.Parse(n_cantidad.Value);

            // Cargando los datos de a orden 
            Orden orden = new Orden();
            orden.numero = numero_orden;
            orden.nombre = platillo;
            orden.precio = precio;
            orden.cantidad = cantidad;

            // Agrega la nueva orden a la lista
            ordenes_cliente.Add(orden);

            // Actualizando el número de orden
            Session["NumeroOrden"] = numero_orden;

            // Enviando la lista a la variable de session 
            Session["ordenes_cliente"] = ordenes_cliente;

            // Mensaje
            Session["Mensaje"] = "La orden ha sido agregada a sus pedidos!";

            mensaje_lbl.Text = "";

            Response.Redirect("PaginaPrincipal.aspx");
        }

        // Mensaje de confirmación
        //MessageBox.Show("La orden ha sido agregada a la lista de pedidos!");


    }
}