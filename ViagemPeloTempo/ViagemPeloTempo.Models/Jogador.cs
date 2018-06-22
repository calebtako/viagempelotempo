using System.Runtime.Serialization;
using System.Security.Principal;
using System.Web.Script.Serialization;

namespace ViagemPeloTempo.Models
{
    public class Jogador : ICustomPrincipal
    {
        public int IdUsuario { get; set; }
        public string NomeUsuario { get; set; }
        public string Senha { get; set; }
        public string Consenha { get; set; }
        public string Email { get; set; }
        public string Imagem { get; set; }
        public bool Administrador { get; set; }

        [ScriptIgnore]
        [IgnoreDataMember]
        public IIdentity Identity
        {
            get
            {
                return new GenericIdentity(this.Email, "Jogador");
            }
            set { }
        }

        public bool IsInRole(string role)
        {
            return (role == "Admin");
        }

        public Jogador()
        {

        }

        public Jogador(string myEmail)
        {
            Identity = new GenericIdentity(myEmail, "Jogador");
        }
    }
}
