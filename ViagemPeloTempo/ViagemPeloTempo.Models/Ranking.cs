using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ViagemPeloTempo.Models
{
    public class Ranking
    {
        public int Posicao { get; set; }
        public Jogador Jogador { get; set; }
        public int Acertos { get; set; }
    }
}
