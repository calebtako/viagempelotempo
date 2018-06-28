using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ViagemPeloTempo.Models;
using ViagemPeloTempo.DataAccess;

namespace ViagemPeloTempo.Controllers
{
    [Authorize]
    public class PerfilController : Controller
    {
        public ActionResult PagPerfil()
        {
            var jogador = new JogadorDAO().VerPerfil(((Jogador)User).IdUsuario);

            var rankingMensal = new RankingDAO().MelhoresDoMes().FirstOrDefault(r => r.Jogador.IdUsuario == jogador.IdUsuario);
            jogador.RankingMensal = rankingMensal != null ? rankingMensal.Posicao : 0;

            var rankingSemanal = new RankingDAO().MelhoresDaSemana().FirstOrDefault(r => r.Jogador.IdUsuario == jogador.IdUsuario);
            jogador.RankingSemanal = rankingSemanal != null ? rankingSemanal.Posicao : 0;

            return View(jogador);
        }

        public ActionResult SalvarSenha(Jogador obj)
        {
            if (obj.NovaSenha != obj.ConfirmarSenha)
            {
                var jogador = new JogadorDAO().VerPerfil(((Jogador)User).IdUsuario);
                ViewBag.ErroMsg = "Senha não confirmada!";
                return View("PagPerfil", obj);
            }

            new JogadorDAO().AlterarSenha(obj);
            return RedirectToAction("PagPerfil", "Perfil");
        }

        private bool ValidarEmail(string email)
        {
            if (String.IsNullOrEmpty(email))
                return false;
            if (!email.Contains("@") || !email.Contains("."))
                return false;
            string[] strCamposEmail = email.Split(new String[] { "@" }, StringSplitOptions.RemoveEmptyEntries);
            if (strCamposEmail.Length != 2)
                return false;
            if (strCamposEmail[0].Length < 3)
                return false;
            if (!strCamposEmail[1].Contains("."))
                return false;
            strCamposEmail = strCamposEmail[1].Split(new String[] { "." }, StringSplitOptions.RemoveEmptyEntries);
            if (strCamposEmail.Length < 2)
                return false;
            if (strCamposEmail[0].Length < 1)
                return false;
            return true;
        }
    }
}