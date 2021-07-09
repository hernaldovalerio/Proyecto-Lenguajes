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
        string imagen_cangreburger = "cangreburger.jpg";
        string imagen_colorburger = "color burger.jpg";
        string imagen_cangreburger_con_mermelada_de_medusa = "cangreburger con mermelada de medusa.jpg";
        string imagen_pizza_de_Don_Cangrejo = "pizza de Don Cangrejo.jpg";
        string img_url = "~/img/";

        //Precios
        float precio_cangreburger = 10;
        float precio_colorburger = 20;
        float precio_cangreburger_con_mermelada_de_medusa = 30;
        float precio_pizza_de_Don_Cangrejo = 40;
        float precio = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            string platillo = "";

            if (!IsPostBack)
            {
                platillo = Session["Platillo"].ToString();
                Lbl_Platillo.Text = platillo;
                
                switch (platillo)
                {
                    case "Cangreburger":
                        img_url += imagen_cangreburger;
                        precio = precio_cangreburger;
                        break;
                    case "Color_Burger":
                        img_url += imagen_colorburger;
                        precio = precio_colorburger;
                        break;
                    case "Cangreburger_con_mermelada_de_medusa":
                        img_url += imagen_cangreburger_con_mermelada_de_medusa;
                        precio = precio_cangreburger_con_mermelada_de_medusa;
                        break;
                    case "Pizza_de_Don_Cangrejo":
                        img_url += imagen_pizza_de_Don_Cangrejo;
                        precio = precio_pizza_de_Don_Cangrejo;
                        break;
                }

                Image1.ImageUrl = img_url;
                Lbl_precio.Text = precio + "$";
            } 
        }
    }
}