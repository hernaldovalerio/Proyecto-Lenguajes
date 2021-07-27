using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModuloAdministracion.Entidades
{
    public class Orden
    {
        public int numero { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public float precio { get; set;}

        public short cantidad { get; set; }

    }
}
