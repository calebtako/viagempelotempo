using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ViagemPeloTempo.Models;
using ViagemPeloTempo.DataAccess;

namespace ViagemPeloTempo.Controllers
{
    [Authorize]
    public class PerfilController : Controller
    {
        public ActionResult PagPerfil()
        {
          
            var usuarioId = ((Jogador)User).IdUsuario;
            var jogador = new JogadorDAO();
            jogador.VerPerfil(usuarioId);
            return View();
        }
    }
}