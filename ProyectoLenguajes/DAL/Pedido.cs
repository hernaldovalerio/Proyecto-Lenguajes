//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CapaDatosAdministracion
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pedido
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Pedido()
        {
            this.LineaPedido = new HashSet<LineaPedido>();
        }
    
        public int PedidoID { get; set; }
        public string DescPedido { get; set; }
        public int EstadoID { get; set; }
        public int PersonaID { get; set; }
        public System.DateTime FechaPedido { get; set; }
        public Nullable<System.DateTime> FechaEntrega { get; set; }
    
        public virtual Estado Estado { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LineaPedido> LineaPedido { get; set; }
        public virtual Persona Persona { get; set; }
    }
}
