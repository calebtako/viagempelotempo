using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using ViagemPeloTempo.Models;

namespace ViagemPeloTempo.DataAccess
{
    public class PerguntaDAO
    {
        public Questao Buscar(int IdQuest)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn =
                new SqlConnection(@"Initial Catalog=viagempelotempo;
                                    Data Source=localhost;
                                    Integrated Security=SSPI;"))
            {
                //Criando instrução sql para selecionar todos os registros na tabela de contatos
                string strSQL = @"SELECT q.texto, a.texto FROM questao as q where id = " + IdQuest + " inner join alternativa as a on q.idquest = a.idquest;";

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
                    //Fechando conexão com o banco de dados
                    conn.Close();

                    if (dt == null || dt.Rows.Count <= 0)
                        return null;

                    var row = dt.Rows[0];

                    var questao = new Questao
                    {
                        IdQuestao = Convert.ToInt32(row["id"]),
                        
                    };

                    return questao;
                }
            }

        }

    }
}
