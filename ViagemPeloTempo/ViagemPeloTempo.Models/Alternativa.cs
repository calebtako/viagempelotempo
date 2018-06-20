using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ViagemPeloTempo.Models
{
    public class Alternativa
    {
        public int IdAlternativa { get; set; }
        public Questao Questao { get; set; }
        public string Texto { get; set; }
        public bool Correta { get; set; }
    }
}
