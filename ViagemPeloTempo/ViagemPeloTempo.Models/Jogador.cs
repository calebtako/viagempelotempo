using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ViagemPeloTempo.Models
{
    public class Jogador
    {
        public int IdUsuario { get; set; }
        public string NomeUsuario { get; set; }
        public string Senha { get; set; }
        public string Nick { get; set; }
        public string Email { get; set; }
        public int RankSemana { get; set; }
        public int RankMes { get; set; }
        
    }
}
