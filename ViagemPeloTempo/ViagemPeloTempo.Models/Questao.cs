using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ViagemPeloTempo.Models
{
    public class Questao
    {
        public int IdQuest { get; set; }
        public string Texto { get; set; }
        public Fase IdFase { get; set; }

        public List<Alternativa> Alternativas { get; set; }

        public Questao()
        {
            this.Alternativas = new List<Alternativa>();
        }
    }
}
