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
            eliminar_btn.Enabled = true;
            modificar_btn.Enabled = true;
            eliminar_btn.Visible = false;
            modificar_btn.Visible = false;
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
            table.Columns.Add("Email", typeof(string));
            table.Columns.Add("Rol", typeof(string));
            table.Columns.Add("Direccion", typeof(string));

            List<Object[]> list = logica.ListarCuentas();

            //eliminar ya que solo es consulta de 1
            //string[] tempL = logica.BuscarPlatillo("Brownie");

            //list.Add(tempL);
            //

            foreach (Object[] temp in list)
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

        public void ModeSearch()
        {
            eliminar_btn.Visible = true;
            modificar_btn.Visible = true;
            email_txt.Disabled = true;
            buscar_btn.Visible = false;
            cancelar_btn.Visible = true;
            ingresar_btn.Visible = false;
            check.Checked = false;

            //email_txt.Value = "";
            password_txt.Value = "";
            nombre_txt.Value = "";
            apellido_txt.Value = "";
            direccion_txt.Value = "";
        }

        public void ModeInsert()
        {
            ingresar_btn.Visible = true;
            eliminar_btn.Visible = false;
            modificar_btn.Visible = false;
            email_txt.Disabled = false;
            buscar_btn.Visible = true;
            cancelar_btn.Visible = false;
            check.Checked = false;

            email_txt.Value = "";
            password_txt.Value = "";
            nombre_txt.Value = "";
            apellido_txt.Value = "";
            direccion_txt.Value = "";
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            //Implementar logica de cuando se encuentre un usuario y cuando no se encuentre

            string[] cuenta = logica.BuscarEmail(email_txt.Value);

            if (cuenta[0].Equals("Datos No Encontrados"))
            {
                mensaje_lbl.Text = cuenta[0];
                mensaje_lbl.Attributes.CssStyle.Add("color", "red");
            }
            else
            {
                ModeSearch();

                mensaje_lbl.Text = cuenta[0];
                mensaje_lbl.Attributes.CssStyle.Add("color", "green");

                email_txt.Value = cuenta[1];
                //password_txt.Value = cuenta[2];
                nombre_txt.Value = cuenta[2];
                apellido_txt.Value = cuenta[3];
                //foto_fld.Value = plato[4];
                direccion_txt.Value = cuenta[5];
                //rol_opt.SelectedIndex = Int32.Parse(cuenta[4]);

            }

        }


        protected void Cancelar_Click(object sender, EventArgs e)
        {
            //Implementar logica de cuando se encuentre un usuario y cuando no se encuentre
            ModeInsert();

        }


        protected void Ingresar_Click(object sender, EventArgs e)
        {

            string s = logica.InsertarCuenta(email_txt.Value,password_txt.Value,nombre_txt.Value,apellido_txt.Value,direccion_txt.Value, (rol_opt.SelectedIndex+1));

            if (s.Equals("Introducción de nuevo Plato Existosa!"))//logica.ValidarExtension(FileUpload_fld.))
            {
                email_txt.Value = "";
                password_txt.Value = "";
                nombre_txt.Value = "";
                apellido_txt.Value = "";
                direccion_txt.Value = "";

                mensaje_lbl.Text = s;
                mensaje_lbl.Attributes.CssStyle.Add("color", "green");
            }
            else
            {
                mensaje_lbl.Text = s;
                mensaje_lbl.Attributes.CssStyle.Add("color", "red");
            }

        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            string s = logica.EliminarCuenta(email_txt.Value);

            if (s.Equals("Platillo borrado de forma Existosa!"))
            {
                ModeInsert();
                mensaje_lbl.Text = s;
                mensaje_lbl.Attributes.CssStyle.Add("color", "green");
            }
            else
            {
                mensaje_lbl.Text = s;
                mensaje_lbl.Attributes.CssStyle.Add("color", "red");
            }
        }

        protected void Modificar_Click(object sender, EventArgs e)
        {
            string s = logica.ModificarCuenta(email_txt.Value, password_txt.Value, nombre_txt.Value, apellido_txt.Value, direccion_txt.Value, rol_opt.SelectedIndex+1);

            if (s.Equals("Platillo modificado de forma Existosa!"))
            {
                ModeInsert();
                mensaje_lbl.Text = s;
                mensaje_lbl.Attributes.CssStyle.Add("color", "green");
            }
            else
            {
                mensaje_lbl.Text = s;
                mensaje_lbl.Attributes.CssStyle.Add("color", "red");
            }
        }

    }
}