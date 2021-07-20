using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaLogicaAdministracion;

namespace ModuloAdministracion
{
    public partial class MantenimientoPlatillos : System.Web.UI.Page
    {

        private LogicaAdministracion logica;
        public static string[] platoR = { "", "", "", "", "" };
        public FileUpload imgB;
        public int mode = 0;
        public string tableHead = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            logica = new LogicaAdministracion();
            Session["logica"] = logica;
            eliminar_btn.Visible = false;
            modificar_btn.Visible = false;
            plato_txt.Disabled = false;
            buscar_btn.Visible = true;
            cancelar_btn.Visible = false;
            deshabilitar_btn.Visible = false;
            inhabilitado_txt.Disabled = true;
        }

        public string DataGridCreation()
        {
            StringBuilder strHTMLBuilder = new StringBuilder();

            DataTable table = new DataTable();
            table.Columns.Add("Nombre", typeof(string));
            table.Columns.Add("Descripcion", typeof(string));
            table.Columns.Add("Precio", typeof(decimal));
            table.Columns.Add("Inhabilitado", typeof(bool));
            table.Columns.Add("Imagen", typeof(Object));

            List<Object[]> list = logica.ListarPlatillo();

            //eliminar ya que solo es consulta de 1
            //string[] tempL = logica.BuscarPlatillo("Brownie");

            //list.Add(tempL);
            //
            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            System.Drawing.Image img;

            foreach (Object[] temp in list)
            {
                if (temp[5] != null)
                {
                    var r = Convert.ToBase64String((byte[])temp[5]);
                    string s = String.Format("data:image;base64,{0}", r);
                    table.Rows.Add(temp[1], temp[2], temp[3], temp[4], s);
                }
                else
                {
                    table.Rows.Add(temp[1], temp[2], temp[3], temp[4], temp[5]);
                }

                
            }

            //strHTMLBuilder.Append("<table id=\"dtBasicExample\" class=\"table table - striped table - bordered\" cellspacing=\"0\" width=\"80%\">");

            strHTMLBuilder.Append("<thead><tr >");
            foreach (DataColumn myColumn in table.Columns)
            {
                strHTMLBuilder.Append("<td >");
                strHTMLBuilder.Append(myColumn.ColumnName);
                strHTMLBuilder.Append("</td>");

            }

            strHTMLBuilder.Append("</tr></thead>");

            //tableHead = strHTMLBuilder.ToString();

            //strHTMLBuilder.Clear();

            strHTMLBuilder.Append("<tbody>");


            foreach (DataRow myRow in table.Rows)
            {

                strHTMLBuilder.Append("<tr >");
                foreach (DataColumn myColumn in table.Columns)
                {
                    if (myColumn.ColumnName.Equals("Imagen") && myRow[myColumn.ColumnName].ToString().Length > 0)
                    {
                       
                        strHTMLBuilder.Append("<td ><img src='");
                        strHTMLBuilder.Append((string)myRow[myColumn.ColumnName]);
                        strHTMLBuilder.Append("'style='width: 5px, heigth: 5px'/></td>");

                        //Imagen.ImageUrl = (string)myRow[myColumn.ColumnName];

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

            string Htmltext = strHTMLBuilder.ToString();

            return Htmltext;

        }

        public void ModeSearch()
        {
            eliminar_btn.Visible = true;
            modificar_btn.Visible = true;
            plato_txt.Disabled = true;
            buscar_btn.Visible = false;
            cancelar_btn.Visible = true;
            deshabilitar_btn.Visible = true;
            ingresar_btn.Visible = false;
            inhabilitado_txt.Disabled = true;

            //plato_txt.Value = "";
            descripcion_txt.Value = "";
            precio_txt.Value = "";
            inhabilitado_txt.Value = "";
            mode = 1;
        }

        public void ModeInsert()
        {
            ingresar_btn.Visible = true;
            eliminar_btn.Visible = false;
            modificar_btn.Visible = false;
            plato_txt.Disabled = false;
            buscar_btn.Visible = true;
            cancelar_btn.Visible = false;
            deshabilitar_btn.Visible = false;
            inhabilitado_txt.Disabled = true;
            inhabilitado_txt.Disabled = true;

            plato_txt.Value = "";
            descripcion_txt.Value = "";
            precio_txt.Value = "";
            inhabilitado_txt.Value = "";
            mode = 0;
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            //Implementar logica de cuando se encuentre un usuario y cuando no se encuentre

            string[] plato = logica.BuscarPlatilloNombre(plato_txt.Value);

            if (plato[0].Equals("Datos No Encontrados"))
            {
                mensaje_lbl.Text = plato[0];
                mensaje_lbl.Attributes.CssStyle.Add("color", "red");
            }
            else
            {
                ModeSearch();

                mensaje_lbl.Text = plato[0];
                mensaje_lbl.Attributes.CssStyle.Add("color", "green");

                plato_txt.Value = plato[1];
                descripcion_txt.Value = plato[2];
                precio_txt.Value = plato[3];
                //foto_fld.Value = plato[4];
                inhabilitado_txt.Value = plato[5];

            }

        }


        protected void Cancelar_Click(object sender, EventArgs e)
        {
            //Implementar logica de cuando se encuentre un usuario y cuando no se encuentre
            ModeInsert();

        }


        protected void Ingresar_Click(object sender, EventArgs e)
        {
            byte[] img = new byte[foto_fld.FileBytes.Length-1];

            img = foto_fld.FileBytes;

            string s = logica.InsertarPlatillo(plato_txt.Value, descripcion_txt.Value, precio_txt.Value, foto_fld.FileBytes);

            if (s.Equals("Introducción de nuevo Plato Existosa!"))//logica.ValidarExtension(FileUpload_fld.))
            {
                plato_txt.Value = "";
                descripcion_txt.Value = "";
                precio_txt.Value = "";

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
            string s = logica.EliminarPlatillo(plato_txt.Value);

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

            byte[] img = new byte[100000];
            img = foto_fld.FileBytes;

            string s = logica.ModificarPlatillo(plato_txt.Value, descripcion_txt.Value, precio_txt.Value, img);

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

        protected void Deshabilitar_Click(object sender, EventArgs e)
        {
            eliminar_btn.Visible = true;
            modificar_btn.Visible = true;
            plato_txt.Disabled = true;
            buscar_btn.Visible = false;
            cancelar_btn.Visible = true;
            deshabilitar_btn.Visible = true;
            ingresar_btn.Visible = false;
            inhabilitado_txt.Disabled = true;

            inhabilitado_txt.Value = logica.Deshabilitar(plato_txt.Value, inhabilitado_txt.Value);
            mensaje_lbl.Text = "";
        }

        public void setImg(FileUpload f)
        {
            imgB = f;
        }

    }
}