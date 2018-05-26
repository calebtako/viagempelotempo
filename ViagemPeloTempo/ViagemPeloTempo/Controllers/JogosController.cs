using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ViagemPeloTempo.DataAccess;
using ViagemPeloTempo.Models;


namespace ViagemPeloTempo.Controllers
{
    [Authorize]
    public class JogosController : Controller
    {
        // GET: Jogos
        public ActionResult PagJogoA()
        {
            
            return View();
        }

        public ActionResult PagJogoC()
        {
            return View();
        }

        public ActionResult PagJogoMe()
        {
            return View();
        }

        public ActionResult PagJogoMo()
        {
            return View();
        }

        public ActionResult PagJogop()
        {
            return View();
        }
    }
}