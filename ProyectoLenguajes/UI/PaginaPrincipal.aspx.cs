using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModuloAdministracion
{
    public partial class PaginaPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void BL_ListaPlatillos_Click(object sender, BulletedListEventArgs e)
        {
            ListItem li = BL_ListaPlatillos.Items[e.Index];
            Session["Platillo"] = li.Value;
            Response.Redirect("Platillo.aspx");
        }
    }
}