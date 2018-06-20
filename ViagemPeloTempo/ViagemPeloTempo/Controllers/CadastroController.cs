using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ViagemPeloTempo.Models;
using ViagemPeloTempo.DataAccess;

namespace ViagemPeloTempo.Controllers
{
    public class CadastroController : Controller
    {
        public ActionResult IndexCad()
        {
            return View();
        }

        public ActionResult Salvar(Jogador obj)
        {
            new JogadorDAO().Inserir(obj);

            return RedirectToAction("IndexLogin", "Login");
        }
    }
}