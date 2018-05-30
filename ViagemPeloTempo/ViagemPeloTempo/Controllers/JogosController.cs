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
            
            var questao = new PerguntaDAO().Buscar(2);
            return View(questao);
        }

        public ActionResult PagJogoC()
        {
           
            var questao = new PerguntaDAO().Buscar(5);
            return View(questao);
        }

        public ActionResult PagJogoMe()
        {
            
            var questao = new PerguntaDAO().Buscar(3);
            return View(questao);
        }

        public ActionResult PagJogoMo()
        {
            
            var questao = new PerguntaDAO().Buscar(4);
            return View(questao);
        }

        public ActionResult PagJogoP()
        {
            
            var questao = new PerguntaDAO().Buscar(1);
            return View(questao);
        }
    }
}