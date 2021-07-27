using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Egoavil_sCliente
{
    public partial class RegistrarPlatillo : System.Web.UI.Page
    {
        DBA_IF4101_HHSMEntities dBA_IF4101_HHSM = new DBA_IF4101_HHSMEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IngresarPlatillo_Click(object sender, EventArgs e)
        {
            //Atributos del platillo
            string platillo = plato_txt.Value;
            string descripcion = descripcion_txt.Value;
            double precio = Double.Parse(precio_txt.Value);
            Byte[] imagen = FlUpld_imagen.FileBytes;        

            dBA_IF4101_HHSM.CreateFood(descripcion, platillo, (decimal?)precio, false, imagen);
        }
    }
}