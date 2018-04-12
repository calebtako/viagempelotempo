using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ViagemPeloTempo.Models;
namespace ViagemPeloTempo.Controllers
{
    [Authorize]
    public class PagSelecaoController : Controller
    {

        // GET: PagSelecao
        public ActionResult PagSelecao()
        {
            return View();
        }
    }
}