using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ViagemPeloTempo.Models;
namespace ViagemPeloTempo.DataAccess
{
    class RespostaDAO
    {
        public void Inserir(int usuarioid)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                

                Resposta obj = new Resposta();

                //Criando instrução sql para inserir na tabela de estados
                string strSQL = @"INSERT INTO resposta (idjogador, idquestao,idalternativa) 
                                  VALUES (@idjogador, @idquestao,@idalternativa);";

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    cmd.Connection = conn;
                    //Preenchendo os parâmetros da instrução sql
                    cmd.Parameters.Add("@idjogador", SqlDbType.Int).Value = usuarioid;
                    cmd.Parameters.Add("@idquestao", SqlDbType.Int).Value = obj.IdQuest;
                    cmd.Parameters.Add("@idalternativa", SqlDbType.Int).Value = obj.IdAlt;
                    

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
