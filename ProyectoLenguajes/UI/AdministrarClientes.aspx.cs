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
    public partial class AdministrarClientes : System.Web.UI.Page
    {
        private LogicaAdministracion logica;

        protected void Page_Load(object sender, EventArgs e)
        {
            logica = new LogicaAdministracion();
            Session["logica"] = logica;
            string s = Request.QueryString["Email"];
            if (s != null)
            {
                BloquearUsuario(Request.QueryString["Email"]);
            }
            Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
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
            table.Columns.Add("Inhabilitado", typeof(string));
            table.Columns.Add("Bloquear", typeof(string));

            List<Object[]> list = logica.ListarClientes();

            //eliminar ya que solo es consulta de 1
            //string[] tempL = logica.BuscarPlatillo("Brownie");

            //list.Add(tempL);
            //

            foreach (Object[] temp in list)
            {
                table.Rows.Add(temp[1], temp[2], temp[3], temp[4], temp[5], temp[6]);
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



            string s = "";
            string e = "";

            foreach (DataRow myRow in table.Rows)
            {
                e = "Deshabilitar";

                strHTMLBuilder.Append("<tr >");
                foreach (DataColumn myColumn in table.Columns)
                {

                    if (myColumn.ColumnName.Equals("Email"))
                    {
                        s = myRow[myColumn.ColumnName].ToString();
                    }

                    
                    if (myColumn.ColumnName.Equals("Inhabilitado") && myRow[myColumn.ColumnName].ToString().Equals("Si"))
                    {
                        e = "Habilitar";
                    }


                    if (myColumn.ColumnName.Equals("Bloquear"))
                    {
                        strHTMLBuilder.Append("<td >");

                        strHTMLBuilder.Append("<a ID=\"mod\" type=\"button\" runat=\"server\" class=\"btn btn-secondary\" href=\"?Email="+s+"\">"+e+"</a>");
                        strHTMLBuilder.Append("</td>");
                    }
                    else
                    {
                        strHTMLBuilder.Append("<td >");
                        strHTMLBuilder.Append(myRow[myColumn.ColumnName].ToString());
                        strHTMLBuilder.Append("</td>");
                    }

                }
                strHTMLBuilder.Append("</tr>");

                

            }
            Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);

            return strHTMLBuilder.ToString();
        }

        public void BloquearUsuario(string email)
        {
            logica.DeshabilitarCliente(email);
        }


        /**protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //Implementar logica de cuando se encuentre un usuario y cuando no se encuentre
            bloquear_btn.Enabled = true;
            email_txt.Disabled = true;
            buscar_btn.Visible = false;
            cancelar_btn.Visible = true;
            bloquear_btn.Visible = true;
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            //Implementar logica de cuando se encuentre un usuario y cuando no se encuentre
            bloquear_btn.Enabled = false;
            email_txt.Disabled = false;
            buscar_btn.Visible = true;
            cancelar_btn.Visible = false;
            bloquear_btn.Visible = false;
        }*/


    }
}