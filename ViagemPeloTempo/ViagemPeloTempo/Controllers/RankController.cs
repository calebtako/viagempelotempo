using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ViagemPeloTempo.DataAccess;

namespace ViagemPeloTempo.Controllers
{
    [Authorize]
    public class RankController : Controller
    {
        public ActionResult RankJ()
        {
            ViewBag.MelhoresDoMes = new RankingDAO().MelhoresDoMes();
            ViewBag.MelhoresDaSemana = new RankingDAO().MelhoresDaSemana();
            return View();
        }
    }
}