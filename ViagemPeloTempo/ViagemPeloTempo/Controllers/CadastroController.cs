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
            if (!ValidarEmail(obj.Email))
            {
                ViewBag.erroMsg("E-mail invalido");
                return View("IndexCad");
            }

            new JogadorDAO().Inserir(obj);

            return RedirectToAction("IndexLogin", "Login");




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