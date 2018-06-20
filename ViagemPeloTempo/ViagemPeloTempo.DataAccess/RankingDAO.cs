using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using ViagemPeloTempo.Models;

namespace ViagemPeloTempo.DataAccess
{
    public class RankingDAO
    {
        public List<Ranking> MelhoresDoMes()
        {
            var lst = new List<Ranking>();

            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                //Criando instrução sql para selecionar todos os registros na tabela de estados
                string strSQL = @"select 
	                                  j.nomeusuario,
	                                  count(r.idalternativa) as qtd_acertos 
                                  from resposta r 
                                  inner join alternativa a on (a.idalternativa = r.idalternativa)
                                  inner join jogador j on (j.idjogador = r.idjogador)
                                  where a.correta <> 0
                                  and month(r.tempo) = month(getdate())
                                  group by j.nomeusuario
                                  having count(r.idalternativa) > 0
                                  order by count(r.idalternativa) desc;";

                //Criando um comando sql que será executado na base d edados
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
                    //Fechando conexão com o banco de dados
                    conn.Close();

                    //Perconrrendo todos os registros encontrados na base de dados e adicionando em uma lista
                    foreach (DataRow row in dt.Rows)
                    {
                        var ranking = new Ranking()
                        {
                            Jogador = new Jogador()
                            {
                                NomeUsuario = row["NOMEUSUARIO"].ToString()
                            },
                            Acertos = Convert.ToInt32(row["QTD_ACERTOS"]),
                        };

                        lst.Add(ranking);
                    }
                }
            }

            return lst;
        }

        public List<Ranking> MelhoresDaSemana()
        {
            var lst = new List<Ranking>();

            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                //Criando instrução sql para selecionar todos os registros na tabela de estados
                string strSQL = @"select 
	                                  j.nomeusuario,
	                                  count(r.idalternativa) as qtd_acertos 
                                  from resposta r 
                                  inner join alternativa a on (a.idalternativa = r.idalternativa)
                                  inner join jogador j on (j.idjogador = r.idjogador)
                                  where a.correta <> 0
                                  and datepart(week, r.tempo) = datepart(week, getdate())
                                  group by j.nomeusuario
                                  having count(r.idalternativa) > 0
                                  order by count(r.idalternativa) desc;";

                //Criando um comando sql que será executado na base d edados
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
                    //Fechando conexão com o banco de dados
                    conn.Close();

                    //Perconrrendo todos os registros encontrados na base de dados e adicionando em uma lista
                    foreach (DataRow row in dt.Rows)
                    {
                        var ranking = new Ranking()
                        {
                            Jogador = new Jogador()
                            {
                                NomeUsuario = row["NOMEUSUARIO"].ToString()
                            },
                            Acertos = Convert.ToInt32(row["QTD_ACERTOS"]),
                        };

                        lst.Add(ranking);
                    }
                }
            }

            return lst;
        }
    }
}
