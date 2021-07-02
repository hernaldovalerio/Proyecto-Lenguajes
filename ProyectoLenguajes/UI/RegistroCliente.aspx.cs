using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaLogicaAdministracion;


namespace ModuloAdministracion
{
    public partial class RegistroCliente : System.Web.UI.Page
    {

        private LogicaAdministracion logica;
        bool modify = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            logica = new LogicaAdministracion();
            Session["logica"] = logica;
            modificar_btn.Enabled = false;
            email_txt.Disabled = false;

            if (modify)
            {
                modificar_btn.Visible = true;
                ingresar_btn.Visible = false;
            }
            else
            {
                modificar_btn.Visible = false;
                ingresar_btn.Visible = true;
            }

        }

        
    }
}