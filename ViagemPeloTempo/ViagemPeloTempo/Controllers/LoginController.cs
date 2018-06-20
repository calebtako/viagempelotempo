using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using ViagemPeloTempo.DataAccess;
using ViagemPeloTempo.Models;

namespace ViagemPeloTempo.Controllers
{
    public class LoginController : Controller
    {
        public ActionResult IndexLogin()
        {
            return View();
        }

        public ActionResult Entrar(Jogador obj)
        {
            var jogadorLogado = new JogadorDAO().Logar(obj);

            if (jogadorLogado == null)
            {
                ViewBag.MsgErro = "Email ou senha invalido";
                return View("IndexLogin");
            }

            var userData = new JavaScriptSerializer().Serialize(jogadorLogado);
            FormsAuthenticationUtil.SetCustomAuthCookie(jogadorLogado.Email, userData, false);

            return RedirectToAction("PaginaInicial", "PagInicio");
        }

        public ActionResult LogOff()
        {
            FormsAuthenticationUtil.SignOut();

            return RedirectToAction("IndexLogin", "Login");
        }
    }
}