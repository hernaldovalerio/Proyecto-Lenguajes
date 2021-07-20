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
        private List<string[]> list;
        private string htmlTable;

        protected void Page_Load(object sender, EventArgs e)
        {
            logica = new LogicaAdministracion();
            Session["logica"] = logica;
            list = logica.ListarPedidos();
            DataGridCreation();
        }


        public void DataGridCreation()
        {
            StringBuilder strHTMLBuilder = new StringBuilder();

            DataTable table = new DataTable();
            table.Columns.Add("PedidoID", typeof(string));
            table.Columns.Add("Descripcion", typeof(string));
            table.Columns.Add("Fecha Pedido", typeof(string));
            table.Columns.Add("PersonaID", typeof(string));
            table.Columns.Add("Estado", typeof(string));
            table.Columns.Add("Modificar", typeof(string));

            

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
                    if (myColumn.ColumnName.Equals("Modificar"))
                    {
                        strHTMLBuilder.Append("<td >");
                        strHTMLBuilder.Append("<button  href=\"Inicio.aspx\" onclick=\"Inicio.aspx\"/>Modificar");
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
            /**
            check_email.Checked = false;
            check_fecha.Checked = false;
            check_nombre.Checked = false;
            */
        }

        public string GetTable()
        {
            return htmlTable;
        }

        protected void Filtrar_Click(object sender, EventArgs e)
        {

            if (check_email.Checked == true || check_fecha.Checked == true || check_nombre.Checked == true)
            {
                DateTime bef = new DateTime(2000,01,01,01,01,00);
                DateTime af = new DateTime(2000, 01, 01, 01, 01, 00);

                if (check_fecha.Checked)
                {
                    if (logica.CheckDate(befday_opt.Value, befmonth_opt.Value, befyear_opt.Value, befhour_opt.Value, befmin_opt.Value)
                            && logica.CheckDate(afday_opt.Value, afmonth_opt.Value, afyear_opt.Value, afhour_opt.Value, afmin_opt.Value))
                    {

                        bef = new DateTime(Int32.Parse(befyear_opt.Value), Int32.Parse(befmonth_opt.Value),
                            Int32.Parse(befday_opt.Value), Int32.Parse(befhour_opt.Value), Int32.Parse(befmin_opt.Value), 0);
                        af = new DateTime(Int32.Parse(afyear_opt.Value), Int32.Parse(afmonth_opt.Value),
                            Int32.Parse(afday_opt.Value), Int32.Parse(afhour_opt.Value), Int32.Parse(afmin_opt.Value), 0);

                        if (bef.CompareTo(af) >= 0) 
                        {
                            mensaje_lbl.Text = "Rango no permitido fechas no permitido: fecha desde es mayor que fecha hasta";
                            mensaje_lbl.Attributes.CssStyle.Add("color", "red");
                            return;
                        }

                    }
                    else
                    {
                        mensaje_lbl.Text = "Fechas no validas";
                        mensaje_lbl.Attributes.CssStyle.Add("color", "red");
                        return;
                    }
                }


                list = logica.Filtrar(id_txt.Value, nombre_txt.Value, apellido_txt.Value, bef, af);

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

                befday_opt.Value = "";
                befmonth_opt.Value = "";
                befyear_opt.Value = "";
                befhour_opt.Value = "";
                befmin_opt.Value = "";
                afday_opt.Value = "";
                afmonth_opt.Value = "";
                afyear_opt.Value = "";
                afhour_opt.Value = "";
                afmin_opt.Value = "";
                id_txt.Value = "";
                nombre_txt.Value = "";
                apellido_txt.Value = "";


                DataGridCreation();

            }
            else
            {
                mensaje_lbl.Text = "No ha seleccionado filtros";
                mensaje_lbl.Attributes.CssStyle.Add("color", "red");
            }
        }

    }
}