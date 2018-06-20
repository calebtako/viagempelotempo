using System;
using System.Collections.Generic;
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

        public List<Resposta> Buscar(int fase, int jogador)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                var lst = new List<Resposta>();
                //Criando instrução sql para selecionar todos os registros na tabela de contatos
                string strSQL = @"select r.* 
                                from resposta r
                                inner join questao q on (q.idquest = r.idquestao)
                                where r.idjogador = @idjogador
                                and q.idfase = @idfase;";

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    //Abrindo conexão com o banco de dados
                    conn.Open();
                    cmd.Connection = conn;
                    cmd.Parameters.Add("@idjogador", SqlDbType.Int).Value = jogador;
                    cmd.Parameters.Add("@idfase", SqlDbType.Int).Value = fase;
                    cmd.CommandText = strSQL;

                    //Executando instrução sql
                    var dataReader = cmd.ExecuteReader();
                    var dt = new DataTable();
                    dt.Load(dataReader);
                    conn.Close();

                    foreach (DataRow row in dt.Rows)
                    {
                        lst.Add(new Resposta()
                        {
                            Jogador = new Jogador() { IdUsuario = Convert.ToInt32(row["idjogador"]) },
                            Questao = new Questao() { IdQuest = Convert.ToInt32(row["idquestao"]) },
                            Alternativa = new Alternativa() { IdAlternativa = Convert.ToInt32(row["idalternativa"]) },
                            DataHora = Convert.ToDateTime(row["tempo"])
                        });
                    }
                }
                return lst;
            }
        }
    }
}
