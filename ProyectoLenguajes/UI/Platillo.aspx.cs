using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModuloAdministracion
{
    public partial class Platillo : System.Web.UI.Page
    {
        // Imagenes platillos
        string imagen_cangreburger = "~/img/Cangreburger.jpg";
        string imagen_colorburger = "~/img/Color Burger.jpg";
        string imagen_cangreburger_con_mermelada_de_medusa = "~/img/Cangreburger con mermelada de medusa.jpg";
        string imagen_pizza_de_Don_Cangrejo = "~/img/Pizza de Don Cangrejo.jpg";
        string img_url = "";

        //Precios
        float precio_cangreburger = 10;
        float precio_colorburger = 20;
        float precio_cangreburger_con_mermelada_de_medusa = 30;
        float precio_pizza_de_Don_Cangrejo = 40;
        float precio = 0;

        //Platillo
        string platillo = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                platillo = Session["Platillo"].ToString();
                Lbl_Platillo.Text = platillo;
                
                switch (platillo)
                {
                    case "Cangreburger":
                        img_url = imagen_cangreburger;
                        precio = precio_cangreburger;
                        break;
                    case "Color Burger":
                        img_url = imagen_colorburger;
                        precio = precio_colorburger;
                        break;
                    case "Cangreburger con mermelada de medusa":
                        img_url = imagen_cangreburger_con_mermelada_de_medusa;
                        precio = precio_cangreburger_con_mermelada_de_medusa;
                        break;
                    case "Pizza de Don Cangrejo":
                        img_url = imagen_pizza_de_Don_Cangrejo;
                        precio = precio_pizza_de_Don_Cangrejo;
                        break;
                }

                Image1.ImageUrl = img_url;
                Lbl_precio.Text = "Precio: " + precio + "$";
            } 
        }

        protected void Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaginaPrincipal1.aspx");
        }

        protected void AgregarPedido_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaginaPrincipal1.aspx");

        }
    }
}