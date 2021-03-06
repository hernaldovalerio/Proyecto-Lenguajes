using ModuloAdministracion.CapaLogica;
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
        private List<string[]> list;
        private string htmlTable;

        protected void Page_Load(object sender, EventArgs e)
        {
            logica = new LogicaAdministracion();
            Session["logica"] = logica;
            list = logica.ListarPedidos();

            DataGridCreation();

            if (check_fecha.Checked)
            {
                desde_lbl.Visible = true;
                hasta_lbl.Visible = true;
                Calendar1.Attributes.Remove("hidden");
                Calendar2.Attributes.Remove("hidden");
            }

        }

        public void IrAEstado()
        {
            Response.Redirect("./CambioEstado.aspx");
        }


        public void DataGridCreation()
        {
            StringBuilder strHTMLBuilder = new StringBuilder();

            DataTable table = new DataTable();
            table.Columns.Add("PersonaID", typeof(string));
            table.Columns.Add("Nombre", typeof(string));
            table.Columns.Add("Apellido", typeof(string));
            table.Columns.Add("Descripcion", typeof(string));
            table.Columns.Add("Fecha Pedido", typeof(string));
            table.Columns.Add("Estado", typeof(string));
            table.Columns.Add("PedidoID", typeof(string));
            table.Columns.Add("Modificar", typeof(string));

            

            //eliminar ya que solo es consulta de 1
            //string[] tempL = logica.BuscarPlatillo("Brownie");

            //list.Add(tempL);
            //

            foreach (string[] temp in list)
            {
                table.Rows.Add(temp[1], temp[2], temp[3], temp[4], temp[5], temp[6], temp[7]);
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

                strHTMLBuilder.Append("<tr >");
                foreach (DataColumn myColumn in table.Columns)
                {
                    if (myColumn.ColumnName.Equals("PedidoID"))
                    {
                        s = myRow[myColumn.ColumnName].ToString();
                    }

                    if (myColumn.ColumnName.Equals("Estado"))
                    {
                        e = myRow[myColumn.ColumnName].ToString();
                    }


                    if (myColumn.ColumnName.Equals("Modificar") && list[0][1] != null && !list[0][1].Equals(""))
                    {
                        strHTMLBuilder.Append("<td >");
                        strHTMLBuilder.Append("<a ID=\"mod\" type=\"button\" runat=\"server\" class=\"btn btn-secondary\" href=\"CambioEstado.aspx?Pedido=" + s + "&Estado=" + e + "\">Modificar</a>");
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

            //Close tags.  
            strHTMLBuilder.Append("</tbody>");

            htmlTable = strHTMLBuilder.ToString();

        }

        public string GetTable()
        {
            return htmlTable;
        }

        public void Filtrar_Click(object sender, EventArgs e)
        {
            mensaje_lbl.Text = nombre_txt.Value;

            if (check_fecha.Checked == true || check_nombre.Checked == true || estado_check.Checked)
            {
                DateTime bef = new DateTime(2000,01,01,01,01,00);
                DateTime af = new DateTime(2000, 02, 01, 01, 01, 00);

                string nam = nombre_txt.Value;
                string ap = apellido_txt.Value;
                int n = estado_opt.SelectedIndex;

                mensaje_lbl.Text = nombre_txt.Value;

                if (!check_nombre.Checked)
                {
                    nam = null;
                    ap = null;
                }

                if (!estado_check.Checked)
                {
                    n = 0;
                }

                if (check_fecha.Checked)
                {
                    if (Calendar1.SelectedDate.CompareTo(Calendar2.SelectedDate) > 0) 
                    {
                            mensaje_lbl.Text = "Rango no permitido fechas no permitido: fecha desde es mayor que fecha hasta";
                            mensaje_lbl.Attributes.CssStyle.Add("color", "red");
                            return;
                    }

                    bef = Calendar1.SelectedDate;
                    af = Calendar2.SelectedDate;

                }
                    


                list = logica.Filtrar(nam, ap, bef, af, n);

                if (list[0][0].Equals("Datos Encontrados"))
                {
                    mensaje_lbl.Text = list[0][0];
                    mensaje_lbl.Attributes.CssStyle.Add("color", "green");
                }
                else
                {
                    mensaje_lbl.Text = list[0][0];
                    mensaje_lbl.Attributes.CssStyle.Add("color", "red");
                }

                nombre_txt.Value = "";
                apellido_txt.Value = "";

                

                DataGridCreation();

                
                Calendar1.Attributes.Add("hidden", "true");
                Calendar2.Attributes.Add("hidden", "true");
                desde_lbl.Attributes.Remove("hidden");
                hasta_lbl.Attributes.Remove("hidden");

                check_nombre.Attributes.Remove("checked");
                check_fecha.Attributes.Remove("checked");
                estado_check.Attributes.Remove("checked");


            }
            else
            {
                mensaje_lbl.Text = "No ha seleccionado filtros";
                mensaje_lbl.Attributes.CssStyle.Add("color", "red");
            }
        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            list = logica.ListarPedidos();
        }

    }
}