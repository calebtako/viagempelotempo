using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ViagemPeloTempo.Models
{
    public class Alternativa
    {
        public int IdAlternativa { get; set; }
        public Questao Id { get; set; }
        public string Texto { get; set; }
        public bool Correta { get; set; }
            
    }
}
