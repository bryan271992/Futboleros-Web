//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Proyecto_V.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBL_CORREOS
    {
        public int C_CONSECUTIVO { get; set; }
        public Nullable<int> C_FK_JUGADOR { get; set; }
        public string C_EMAIL { get; set; }
    
        public virtual TBL_JUGADORES TBL_JUGADORES { get; set; }
    }
}
