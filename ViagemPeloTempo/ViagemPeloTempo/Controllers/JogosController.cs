using System;
using System.Web.Mvc;
using ViagemPeloTempo.DataAccess;
using ViagemPeloTempo.Models;

namespace ViagemPeloTempo.Controllers
{
    [Authorize]
    public class JogosController : Controller
    {
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

        public ActionResult SalvarJogoP(Resposta obj)
        {
            obj.Jogador = new Jogador() { IdUsuario = ((Jogador)User).IdUsuario };
            obj.DataHora = DateTime.Now;

            new RespostaDAO().Inserir(obj);

            return RedirectToAction("PagJogoP", "Jogos");
        }
    }
}