using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace VENDAS.Models
{
    public class Venda
    {
        public int Id { get; set; }

        [Required]
        public string Codigo { get; set; }

        [Required]
        public DateTime Data { get; set; }

        [Required]
        public string Cliente { get; set; }

        public List<ItemVenda> Itens { get; set; }

        public Venda()
        {
            this.Itens = new List<ItemVenda>();
        }
    }
}