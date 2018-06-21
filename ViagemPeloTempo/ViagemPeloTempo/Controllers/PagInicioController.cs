using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ViagemPeloTempo.Controllers
{
    [Authorize]
    public class PagInicioController : Controller
    {
        public ActionResult PaginaInicial()
        {
            return View();
        }

        public ActionResult Noticia()
        {
            return View();
        }


        public ActionResult Jogar()
        {
            return RedirectToAction("PagSelecao", "PagSelecao");
        }
    }
}