using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ViagemPeloTempo.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult IndexLogin()
        {
            return View();
        }
        public ActionResult Entrar()
        {

            return RedirectToAction("PaginaInicial", "PagInicio");
        }
        
    }
}