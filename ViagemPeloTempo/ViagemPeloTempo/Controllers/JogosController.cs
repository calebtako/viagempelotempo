using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ViagemPeloTempo.Controllers
{
    public class JogosController : Controller
    {
        // GET: Jogos
        public ActionResult PagJogo()
        {
            return View();
        }
    }
}