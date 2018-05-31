﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ViagemPeloTempo.Models
{
    public class Resposta
    {
        public Questao IdQuest { get; set; }
        public Alternativa IdAlt { get; set; }
        public Jogador IdUsuario { get; set; }
        public DateTime HoraInicio { get; set; }
        public DateTime HoraFim { get; set; }

    }
}
