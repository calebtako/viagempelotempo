using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ViagemPeloTempo.Models
{
    public class Resposta
    {
        public Questao Questao { get; set; }
        public Alternativa Alternativa { get; set; }
        public Jogador Jogador { get; set; }
        public DateTime DataHora { get; set; }
    }
}
