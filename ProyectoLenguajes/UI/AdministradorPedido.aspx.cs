using CapaLogicaAdministracion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModuloAdministracion
{
    public partial class AdministradorPedido : System.Web.UI.Page
    {
        private LogicaAdministracion logica;

        protected void Page_Load(object sender, EventArgs e)
        {
            logica = new LogicaAdministracion();
            Session["logica"] = logica;
        }


        public string DataGridCreation()
        {
            StringBuilder strHTMLBuilder = new StringBuilder();

            DataTable table = new DataTable();
            table.Columns.Add("PedidoID", typeof(string));
            table.Columns.Add("Descripcion", typeof(string));
            table.Columns.Add("Fecha Pedido", typeof(string));
            table.Columns.Add("PersonaID", typeof(string));
            table.Columns.Add("Estado", typeof(string));
            table.Columns.Add("Modificar", typeof(string));

            List<string[]> list = new List<string[]>();

            //eliminar ya que solo es consulta de 1
            //string[] tempL = logica.BuscarPlatillo("Brownie");

            //list.Add(tempL);
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
                    if(myColumn.ColumnName.Equals("Modificar"))
                    {
                        strHTMLBuilder.Append("<td >");
                        strHTMLBuilder.Append("<button href=\"Inicio.aspx\" onclick=\"Inicio.aspx\"/>Modificar");
                        strHTMLBuilder.Append("</td>");
                    }
                    else { 
                        strHTMLBuilder.Append("<td >");
                        strHTMLBuilder.Append(myRow[myColumn.ColumnName].ToString());
                        strHTMLBuilder.Append("</td>");
                    }

                }
                strHTMLBuilder.Append("</tr>");
            }

            //Close tags.  
            strHTMLBuilder.Append("</tbody>");

            string Htmltext = strHTMLBuilder.ToString();

            return Htmltext;

        }


    }
}