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
            int fase;
            var questao = new PerguntaDAO().Buscar(fase = 2);
            return View();
        }

        public ActionResult PagJogoC()
        {
            int fase;
            var questao = new PerguntaDAO().Buscar(fase = 5);
            return View();
        }

        public ActionResult PagJogoMe()
        {
            int fase;
            var questao = new PerguntaDAO().Buscar(fase = 3);
            return View();
        }

        public ActionResult PagJogoMo()
        {
            int fase;
            var questao = new PerguntaDAO().Buscar(fase = 4);
            return View();
        }

        public ActionResult PagJogoP()
        {
            int fase;
            var questao = new PerguntaDAO().Buscar(fase = 1);
            return View(questao);
        }
    }
}