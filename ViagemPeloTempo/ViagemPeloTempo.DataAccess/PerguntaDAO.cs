using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using ViagemPeloTempo.Models;

namespace ViagemPeloTempo.DataAccess
{
    public class PerguntaDAO
    {
        public Questao Buscar(int fase, int jogador)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                //Criando numero randomico de 1 a 45
                int numAle = 0;
                Random random = new Random();
                if (fase == 1)
                {
                    numAle = Convert.ToInt32(random.Next(1, 9 + 1));
                }
                else if (fase == 2)
                {
                    numAle = Convert.ToInt32(random.Next(10, 18 + 1));
                }
                else if (fase == 3)
                {
                    numAle = Convert.ToInt32(random.Next(19, 27 + 1));
                }
                else if (fase == 4)
                {
                    numAle = Convert.ToInt32(random.Next(28, 36 + 1));
                }
                else if (fase == 5)
                {
                    numAle = Convert.ToInt32(random.Next(37, 45 + 1));
                }

                //Criando instrução sql para selecionar todos os registros na tabela de contatos
                string strSQL = string.Format(@"SELECT 
                                    q.idquest,
                                    q.texto as q_texto, 
                                    a.idalternativa,
                                    a.texto as a_texto  
                                  FROM questao as q  
                                  INNER JOIN alternativa as a on q.idquest = a.idquest 
                                  WHERE q.idquest = {0}
                                  AND q.idquest not in (select idquestao from resposta where idjogador = {1})", numAle, jogador);

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    //Abrindo conexão com o banco de dados
                    conn.Open();
                    cmd.Connection = conn;
                    cmd.CommandText = strSQL;

                    //Executando instrução sql
                    var dataReader = cmd.ExecuteReader();
                    var dt = new DataTable();
                    dt.Load(dataReader);
                    conn.Close();

                    if (dt == null || dt.Rows.Count <= 0)
                        return null;

                    var questao = new Questao()
                    {
                        IdQuest = Convert.ToInt32(dt.Rows[0]["idquest"]),
                        Texto = dt.Rows[0]["q_texto"].ToString()
                    };

                    foreach (DataRow row in dt.Rows)
                    {
                        questao.Alternativas.Add(new Alternativa()
                        {
                            IdAlternativa = Convert.ToInt32(row["idalternativa"]),
                            Texto = row["a_texto"].ToString()
                        });
                    }

                    return questao;
                }
            }
        }
    }
}
