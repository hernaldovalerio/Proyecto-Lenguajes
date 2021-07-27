using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ModuloAdministracion.Entidades;

namespace ModuloAdministracion.CapaDatos
{
    public class ClienteDAL
    {        
        DBA_IF4101_HHSMEntities dBA_IF4101_HHSM = new DBA_IF4101_HHSMEntities();

        public void RegistrarCliente(Cliente cliente)
        {            
            dBA_IF4101_HHSM.RegistrarCliente(cliente.correoElectronico, cliente.nombre, cliente.apellido, cliente.direccion, cliente.contrasenna);
        }

        public List<IniciarSesion_Result> IniciarSesion(string correo_electronico, string contraseña)
        {
            return dBA_IF4101_HHSM.IniciarSesion(correo_electronico, contraseña).ToList();
        }

        public List<BuscarCliente_Result> BuscarCliente(string correo_electronico)
        {
            return dBA_IF4101_HHSM.BuscarCliente(correo_electronico).ToList();
        }

        public void ActualizarCliente(string correo_electronico, string nombre, string apellido, string  direccion, string contraseña)
        {
            dBA_IF4101_HHSM.ActualizarCliente(correo_electronico, nombre, apellido, direccion, contraseña);
        }

        public void AgregarPedido(string correo_electronico, string descripcion_pedido)
        {
            dBA_IF4101_HHSM.AgregarPedido(correo_electronico, descripcion_pedido);
        }

        public void AgregarLineaPedido(int linea_pedido, string nombre_platillo, int cantidad)
        {
            dBA_IF4101_HHSM.AgregarLineaPedido(linea_pedido, nombre_platillo, cantidad);
        }

        public List<PedidosCliente_Result> HistorialPedidos(string correo_electronico)
        {
            return dBA_IF4101_HHSM.PedidosCliente(correo_electronico).ToList();
        }
    }
}
