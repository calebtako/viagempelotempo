using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ViagemPeloTempo.Models
{
    public class Resposta
    {
        public Questao IdQuest { get; set; }
        public Alternativa IdAlt { get; set; }
        public Jogador IdUsuario { get; set; }
        public DateTime Tempo { get; set; }
    }
}
