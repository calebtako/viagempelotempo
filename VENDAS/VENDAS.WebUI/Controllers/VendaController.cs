using System;
using System.Web.Mvc;
using VENDAS.DataAccess;
using VENDAS.Models;

namespace VENDAS.WebUI.Controllers
{
    public class VendaController : Controller
    {
        public ActionResult Index()
        {
            var lst = new VendaDAO().BuscarTodos();
            return View(lst);
        }

        public ActionResult Cadastro(int? id)
        {
            if (id.HasValue)
            {
                var obj = new VendaDAO().BuscarPorId((int)id);
                obj.Itens = new ItemVendaDAO().BuscarPorVenda(obj.Id);
                return View(obj);
            }
            else
            {
                var obj = new Venda() { Data = DateTime.Now };
                return View(obj);
            }
        }

        public ActionResult NovoItem(int id)
        {
            var item = new ItemVenda()
            {
                Venda = new VendaDAO().BuscarPorId(id)
            };
            return View(item);
        }

        public ActionResult Detalhes(int id)
        {
            var obj = new VendaDAO().BuscarPorId(id);
            obj.Itens = new ItemVendaDAO().BuscarPorVenda(obj.Id);
            return View(obj);
        }

        [HttpPost]
        public ActionResult Salvar(Venda obj)
        {
            if (ModelState.IsValid)
            {
                new VendaDAO().Inserir(obj);
            }
            return RedirectToAction("Index", "Venda");
        }

        [HttpPost]
        public ActionResult Adicionar(Venda obj)
        {
            if (ModelState.IsValid)
            {
                if (obj != null && obj.Id <= 0)
                {
                    new VendaDAO().Inserir(obj);
                }
                return RedirectToAction("NovoItem", "Venda", new { @id = obj.Id });
            }

            return View("Cadastro");
        }

        [HttpPost]
        public ActionResult SalvarItem(ItemVenda obj)
        {
            if (ModelState.IsValid)
            {
                new ItemVendaDAO().Inserir(obj);
            }
            return RedirectToAction("Cadastro", "Venda", new { @id = obj.Venda.Id });
        }
    }
}