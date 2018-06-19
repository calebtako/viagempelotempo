using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ViagemPeloTempo.Models;

namespace ViagemPeloTempo.Controllers
{
    [Authorize]
    public class PerfilController : Controller
    {
        public ActionResult PagPerfil()
        {
            var usuarioId = ((Jogador)User).IdUsuario;

            return View();
        }
    }
}