using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ViagemPeloTempo.Models
{
    public class Alternativa
    {
        public int IdResp { get; set; }
        public string Texto { get; set; }
        public bool Certa { get; set; }
        public Questao Id { get; set; }
    }
}
