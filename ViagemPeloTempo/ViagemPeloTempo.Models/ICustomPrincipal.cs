using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;

namespace ViagemPeloTempo.Models
{
    public interface ICustomPrincipal : IPrincipal
    {
        int IdUsuario { get; set; }
        string NomeUsuario { get; set; }
        string Email { get; set; }
    }
}
