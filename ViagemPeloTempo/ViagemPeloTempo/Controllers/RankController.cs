using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ViagemPeloTempo.Controllers
{
    [Authorize]
    public class RankController : Controller
    {
        public ActionResult RankJ()
        {
            return View();
        }
    }
}