using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using ViagemPeloTempo.Models;

namespace ViagemPeloTempo.DataAccess
{
    public class RespostaDAO
    {
        public void Inserir(Resposta obj)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                //Criando instrução sql para inserir na tabela de estados
                string strSQL = @"INSERT INTO resposta (idjogador, idquestao, idalternativa) 
                                  VALUES (@idjogador, @idquestao, @idalternativa);";

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    cmd.Connection = conn;
                    //Preenchendo os parâmetros da instrução sql
                    cmd.Parameters.Add("@idjogador", SqlDbType.Int).Value = obj.Jogador.IdUsuario;
                    cmd.Parameters.Add("@idquestao", SqlDbType.Int).Value = obj.Questao.IdQuest;
                    cmd.Parameters.Add("@idalternativa", SqlDbType.Int).Value = obj.Alternativa.IdAlternativa;

                    //Abrindo conexão com o banco de dados
                    conn.Open();
                    //Executando instrução sql
                    cmd.ExecuteNonQuery();
                    //Fechando conexão com o banco de dados
                    conn.Close();
                }
            }
        }
    }
}
