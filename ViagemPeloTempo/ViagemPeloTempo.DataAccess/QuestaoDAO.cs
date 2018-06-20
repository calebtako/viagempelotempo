using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using ViagemPeloTempo.Models;

namespace ViagemPeloTempo.DataAccess
{
    public class QuestaoDAO
    {
        public List<Questao> BuscarPorFase(int fase)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                var lst = new List<Questao>();
                //Criando instrução sql para selecionar todos os registros na tabela de contatos
                string strSQL = @"select * from questao q where q.idfase = @idfase;";

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    //Abrindo conexão com o banco de dados
                    conn.Open();
                    cmd.Connection = conn;
                    cmd.Parameters.Add("@idfase", SqlDbType.Int).Value = fase;
                    cmd.CommandText = strSQL;

                    //Executando instrução sql
                    var dataReader = cmd.ExecuteReader();
                    var dt = new DataTable();
                    dt.Load(dataReader);
                    conn.Close();

                    foreach (DataRow row in dt.Rows)
                    {
                        lst.Add(new Questao()
                        {
                            IdQuest = Convert.ToInt32(row["idquest"]),
                            IdFase = new Fase() { IdFase = Convert.ToInt32(row["idfase"]) },
                            Texto = row["texto"].ToString()
                        });
                    }
                }
                return lst;
            }
        }
    }
}
