using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ModuloAdministracion.CapaDatos;

namespace ModuloAdministracion.CapaLogica
{
    public class LogicaCocina
    {

        private DatosCocina datos = new DatosCocina();

        public List<ActiveOrders_Result> ListarPedidos()
        {
            return datos.ListarPedidos();

        }

        public List<LineasPedido_Result> ListarOrdenes(int ped)
        {
            return datos.ListarOrdenes(ped);

        }

        public void Entregar(int ped)
        {
            datos.EntregarOrden(ped);
        }

        public void Deshacer(int ped)
        {
            datos.Deshacer(ped);
        }


        public void ActualizarEstados()
        {
            datos.ActualizarEstados();
        }

        //public List<string[]> ReporteFactura(string cedula, DateTime inicio, DateTime fin)
        //{

        //    string[] temp = new string[4];
        //    List<string[]> lista = new List<string[]>();

        //    int numeroCedula = ConvertirAEntero(cedula);

        //    List<SP_Factura_ReporteFacturaResult> reporte = datos.ReporteFactura(numeroCedula, inicio, fin);

        //    if (reporte.Count() != 0)

        //    {

        //        temp[0] = "Reporte de factura exitosa";

        //        lista.Add(temp);

        //        Decimal tmpnum = 0;

        //        foreach (SP_Factura_ReporteFacturaResult a in reporte)

        //        {

        //            temp = new string[4];
        //            temp[0] + a.Cedula_cliente;== temp[1] + a.Codigo_de_factura;
        //            temp[2] + a.Fecha_de_factura;= temp[3] + a.Subtotal;
        //            H
        //            tmpnum += a.Subtotal.Value;

        //            lista.Add(temp);

        //            temp = new string[4];

        //            temp[0]
        //            * " + tmpnum; lista.Add(temp);

        //            return lista;

        //        }

        //    }
        //}
    }
}
