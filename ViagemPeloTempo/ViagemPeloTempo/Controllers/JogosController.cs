using System;
using System.Web.Mvc;
using ViagemPeloTempo.DataAccess;
using ViagemPeloTempo.Models;

namespace ViagemPeloTempo.Controllers
{
    [Authorize]
    public class JogosController : Controller
    {
        public ActionResult PagJogoP()
        {
            var questoes = new QuestaoDAO().BuscarPorFase(1);
            var respostas = new RespostaDAO().Buscar(1, ((Jogador)User).IdUsuario);

            if (questoes.Count == respostas.Count)
            {
                return RedirectToAction("PagJogoA", "Jogos");
            }

            var questao = new PerguntaDAO().Buscar(1, ((Jogador)User).IdUsuario);
            while (questao == null)
            {
                questao = new PerguntaDAO().Buscar(1, ((Jogador)User).IdUsuario);
            }
            return View(questao);
        }

        public ActionResult PagJogoA()
        {
            var questoes = new QuestaoDAO().BuscarPorFase(2);
            var respostas = new RespostaDAO().Buscar(2, ((Jogador)User).IdUsuario);

            if (questoes.Count == respostas.Count)
            {
                return RedirectToAction("PagJogoMe", "Jogos");
            }

            var questao = new PerguntaDAO().Buscar(2, ((Jogador)User).IdUsuario);
            while (questao == null)
            {
                questao = new PerguntaDAO().Buscar(2, ((Jogador)User).IdUsuario);
            }
            return View(questao);
        }

        public ActionResult PagJogoMe()
        {
            var questoes = new QuestaoDAO().BuscarPorFase(3);
            var respostas = new RespostaDAO().Buscar(3, ((Jogador)User).IdUsuario);

            if (questoes.Count == respostas.Count)
            {
                return RedirectToAction("PagJogoMo", "Jogos");
            }

            var questao = new PerguntaDAO().Buscar(3, ((Jogador)User).IdUsuario);
            while (questao == null)
            {
                questao = new PerguntaDAO().Buscar(3, ((Jogador)User).IdUsuario);
            }
            return View(questao);
        }

        public ActionResult PagJogoMo()
        {
            var questoes = new QuestaoDAO().BuscarPorFase(4);
            var respostas = new RespostaDAO().Buscar(4, ((Jogador)User).IdUsuario);

            if (questoes.Count == respostas.Count)
            {
                return RedirectToAction("PagJogoC", "Jogos");
            }

            var questao = new PerguntaDAO().Buscar(4, ((Jogador)User).IdUsuario);
            while (questao == null)
            {
                questao = new PerguntaDAO().Buscar(4, ((Jogador)User).IdUsuario);
            }
            return View(questao);
        }

        public ActionResult PagJogoC()
        {
            var questoes = new QuestaoDAO().BuscarPorFase(5);
            var respostas = new RespostaDAO().Buscar(5, ((Jogador)User).IdUsuario);

            if (questoes.Count == respostas.Count)
            {
                return RedirectToAction("RankJ", "Rank");
            }

            var questao = new PerguntaDAO().Buscar(5, ((Jogador)User).IdUsuario);
            while (questao == null)
            {
                questao = new PerguntaDAO().Buscar(5, ((Jogador)User).IdUsuario);
            }
            return View(questao);
        }

        public ActionResult SalvarJogoP(Resposta obj)
        {
            obj.Jogador = new Jogador() { IdUsuario = ((Jogador)User).IdUsuario };
            obj.DataHora = DateTime.Now;

            new RespostaDAO().Inserir(obj);

            return RedirectToAction("PagJogoP", "Jogos");
        }

        public ActionResult SalvarJogoA(Resposta obj)
        {
            obj.Jogador = new Jogador() { IdUsuario = ((Jogador)User).IdUsuario };
            obj.DataHora = DateTime.Now;

            new RespostaDAO().Inserir(obj);

            return RedirectToAction("PagJogoA", "Jogos");
        }

        public ActionResult SalvarJogoMe(Resposta obj)
        {
            obj.Jogador = new Jogador() { IdUsuario = ((Jogador)User).IdUsuario };
            obj.DataHora = DateTime.Now;

            new RespostaDAO().Inserir(obj);

            return RedirectToAction("PagJogoMe", "Jogos");
        }

        public ActionResult SalvarJogoMo(Resposta obj)
        {
            obj.Jogador = new Jogador() { IdUsuario = ((Jogador)User).IdUsuario };
            obj.DataHora = DateTime.Now;

            new RespostaDAO().Inserir(obj);

            return RedirectToAction("PagJogoMo", "Jogos");
        }

        public ActionResult SalvarJogoC(Resposta obj)
        {
            obj.Jogador = new Jogador() { IdUsuario = ((Jogador)User).IdUsuario };
            obj.DataHora = DateTime.Now;

            new RespostaDAO().Inserir(obj);

            return RedirectToAction("PagJogoC", "Jogos");
        }
    }
}