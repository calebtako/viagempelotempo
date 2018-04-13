using System.ComponentModel.DataAnnotations;

namespace VENDAS.Models
{
    public class ItemVenda
    {
        public int Id { get; set; }

        public Venda Venda { get; set; }

        [Required]
        public string Produto { get; set; }

        [Required]
        public int Quantidade { get; set; }

        [Required]
        public decimal ValorUnitario { get; set; }
    }
}
