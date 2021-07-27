using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ModuloAdministracion.CapaDatos;
using ModuloAdministracion.Entidades;

namespace ModuloAdministracion.CapaLogica
{
    public class ClienteBLL
    {
        //DBA_IF4101_HHSMEntities dBA_IF4101_HHSM = new DBA_IF4101_HHSMEntities();
        ClienteDAL clienteDAL = new ClienteDAL();

        public void AgregarPedido(string correo_electronico, string descripcion_pedido)
        {
            clienteDAL.AgregarPedido(correo_electronico, descripcion_pedido);
        }

        public void AgregarLineaPedido(int linea_pedido, string nombre_platillo, int cantidad)
        {
            clienteDAL.AgregarLineaPedido(linea_pedido, nombre_platillo, cantidad);
        }

        public void guardarCliente(Cliente cliente)
        {
            clienteDAL.RegistrarCliente(cliente);            
        }

        public List<IniciarSesion_Result> IniciarSesion(string correo_electronico, string contraseña)
        {
            return clienteDAL.IniciarSesion(correo_electronico, contraseña);
        }

        public List<BuscarCliente_Result> BuscarCliente(string correo_electronico)
        {
            return clienteDAL.BuscarCliente(correo_electronico);
        }

        public void ActualizarCliente(Cliente cliente)
        {
            clienteDAL.ActualizarCliente(cliente.correoElectronico, cliente.nombre, cliente.apellido, cliente.direccion, cliente.contrasenna);
        }
        public List<PedidosCliente_Result> HistorialPedidos(string correo_electronico)
        {
            return clienteDAL.HistorialPedidos(correo_electronico);
        }
    }
}
