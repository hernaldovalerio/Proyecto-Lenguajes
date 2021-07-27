using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

namespace ModuloAdministracion.CapaDatos
{
    public class DatosCocina
    {
        private SqlConnection connextion;
        private string estado = "desconectado";
        private DBA_IF4101_HHSMEntities entity = new DBA_IF4101_HHSMEntities();

        public DatosCocina()
        {
        }



        public List<ActiveOrders_Result> ListarPedidos()
        {

            return entity.ActiveOrders().ToList();

        }

        public List<LineasPedido_Result> ListarOrdenes(int ped)
        {
            return entity.LineasPedido(ped).ToList();
        }

        public void EntregarOrden(int ped)
        {
            entity.DeliverOrder(ped);
        }

        public void Deshacer(int ped)
        {
            entity.UndoDeliver(ped);
        }

        public void ActualizarEstados()
        {
            entity.RefreshOrders();
        }

    }

}
