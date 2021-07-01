using CapaLogicaAdministracion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModuloAdministracion
{
    public partial class AdministradorUsuarios : System.Web.UI.Page
    {
        private LogicaAdministracion logica;

        protected void Page_Load(object sender, EventArgs e)
        {
            logica = new LogicaAdministracion();
            Session["logica"] = logica;
            eliminar_btn.Enabled = false;
            modificar_btn.Enabled = false;
            cancelar_btn.Visible = false;
            buscar_btn.Visible = true;
            email_txt.Disabled = false;
        }

        public string DataGridCreation()
        {
            StringBuilder strHTMLBuilder = new StringBuilder();

            DataTable table = new DataTable();
            table.Columns.Add("Nombre", typeof(string));
            table.Columns.Add("Apellido", typeof(string));
            table.Columns.Add("Rol", typeof(string));
            table.Columns.Add("Email", typeof(string));
            table.Columns.Add("Direccion", typeof(string));
            table.Columns.Add("Bloqueado", typeof(string));
            table.Columns.Add("Borrado", typeof(string));

            List<string[]> list = new List<string[]>();

            //eliminar ya que solo es consulta de 1
            string[] tempL = logica.BuscarPlatillo("Brownie");

            list.Add(tempL);
            //

            foreach (string[] temp in list)
            {
                table.Rows.Add(temp[1], temp[2], temp[3], temp[4], temp[5]);
            }

            //strHTMLBuilder.Append("<table id=\"dtBasicExample\" class=\"table table - striped table - bordered\" cellspacing=\"0\" width=\"80%\">");

            strHTMLBuilder.Append("<thead><tr >");
            foreach (DataColumn myColumn in table.Columns)
            {
                strHTMLBuilder.Append("<td >");
                strHTMLBuilder.Append(myColumn.ColumnName);
                strHTMLBuilder.Append("</td>");

            }

            strHTMLBuilder.Append("</tr></thead><tbody>");


            foreach (DataRow myRow in table.Rows)
            {

                strHTMLBuilder.Append("<tr >");
                foreach (DataColumn myColumn in table.Columns)
                {
                    strHTMLBuilder.Append("<td >");
                    strHTMLBuilder.Append(myRow[myColumn.ColumnName].ToString());
                    strHTMLBuilder.Append("</td>");

                }
                strHTMLBuilder.Append("</tr>");
            }

            //Close tags.  
            strHTMLBuilder.Append("</tbody>");

            string Htmltext = strHTMLBuilder.ToString();

            return Htmltext;

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //Implementar logica de cuando se encuentre un usuario y cuando no se encuentre
            eliminar_btn.Enabled = true;
            modificar_btn.Enabled = true;
            email_txt.Disabled = true;
            buscar_btn.Visible = false;
            cancelar_btn.Visible = true;
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            //Implementar logica de cuando se encuentre un usuario y cuando no se encuentre
            eliminar_btn.Enabled = false;
            modificar_btn.Enabled = false;
            email_txt.Disabled = false;
            buscar_btn.Visible = true;
            cancelar_btn.Visible = false;
        }
    }
}