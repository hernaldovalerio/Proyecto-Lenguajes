using ModuloAdministracion.CapaDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModuloAdministracion.CapaLogica;

namespace ModuloAdministracion
{
    public partial class PaginaPrincipal : System.Web.UI.Page
    {        
        private PlatilloBLL platilloBLL = new PlatilloBLL();        

        public List<ListaPlatillos_Result> lista_platillo = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["Mensaje"] != null)
                {
                    Lbl_Mensaje.Text = Session["Mensaje"].ToString();
                }                
                lista_platillo = platilloBLL.ListarPlatillos();
                ListView1.DataSource = lista_platillo;
                ListView1.DataBind();
            }
            else
            {
                Lbl_Mensaje.Text = "";
            }

        }         

        protected void VerDescripcionPlatillo_Click(object sender, EventArgs e)
        {
            Session["Platillo"] = (sender as Button).CommandArgument;
            Lbl_Mensaje.Text = "";
            Session["Mensaje"] = null;
            Response.Redirect("Platillo.aspx");

        }

        protected void BuscarPlatillo_Click(object sender, EventArgs e)
        {
            string platillo = TxtBx_BuscarPlatillo.Text;
            Lbl_Mensaje.Text = "";
            if (platillo != "")
            {
                List<SearchFood_Result> resultado_platillo = platilloBLL.BuscarPlatillo(platillo);

                if (resultado_platillo.Count == 1)
                {
                    Session["Mensaje"] = null;
                    ListView1.DataSource = resultado_platillo;
                    ListView1.DataBind();
                }
            }
            else
            {
                Session["Mensaje"] = null;
                lista_platillo = platilloBLL.ListarPlatillos();
                ListView1.DataSource = lista_platillo;
                ListView1.DataBind();
            }
        }
    }
}