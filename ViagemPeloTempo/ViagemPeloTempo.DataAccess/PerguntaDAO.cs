using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using ViagemPeloTempo.Models;
using System.Collections;

namespace ViagemPeloTempo.DataAccess
{
    public class PerguntaDAO
    {
        public Jogador User { get; private set; }

        public Questao Buscar(int fase)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn =
                new SqlConnection(@"Initial Catalog=viagempelotempo;
                                    Data Source=localhost;
                                    Integrated Security=SSPI;"))
            {
                //Criando numero randomido de 1 a 36
                int numAle = 0;
                int repi = 0;
                Random random = new Random();
                if (fase == 1)
                {
                    do
                    {
                        repi = numAle;
                        numAle = Convert.ToInt32(random.Next(1, 9));
                        
                    }
                    while (repi == numAle);
                }
                if (fase == 2)
                {
                    numAle = Convert.ToInt32(random.Next(10, 18));
                }
                if (fase == 3)
                {
                    numAle = Convert.ToInt32(random.Next(19, 27));
                }
                if (fase == 4)
                {
                    numAle = Convert.ToInt32(random.Next(28, 36));
                }
                if (fase == 5)
                {
                    numAle = Convert.ToInt32(random.Next(37, 45));
                }


                //Criando instrução sql para selecionar todos os registros na tabela de contatos
                string strSQL = @"SELECT q.texto as q_texto, a.texto as a_texto FROM questao as q  inner join alternativa as a on q.idquest = a.idquest where q.idquest = " + numAle + ";";

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

                    var questao = new Questao()
                    {
                        Texto = dt.Rows[0][("q_texto")].ToString()
                    };

                    foreach (DataRow row in dt.Rows)
                    {
                        questao.Alternativas.Add(new Alternativa()
                        {
                            Texto = row[("a_texto")].ToString()
                        });
                    }

                    return questao;
                }
            }

        }

        public void inserir(Resposta obj)
        {

            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(@"Initial Catalog=viagempelotempo; Data Source=localhost; Integrated Security=SSPI;"))
            {


                var usuarioid = ((Jogador)User).IdUsuario;
                var questid = ;

                //Criando instrução sql para inserir na tabela de estados
                string strSQL = @"INSERT INTO resposta (idjogador, idquestao,idalternativa, hora_inicio, hora_fim) 
                                  VALUES (@idjogador, @idquestao,@idalternativa, @hora_inicio, @hora_fim);";

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {


                    cmd.Connection = conn;
                    //Preenchendo os parâmetros da instrução sql
                    cmd.Parameters.Add("@idjogador", SqlDbType.Int).Value = usuarioid;
                    cmd.Parameters.Add("@idquestao", SqlDbType.Int).Value = obj.IdQuest;
                    cmd.Parameters.Add("@idalternativa", SqlDbType.Int).Value = obj.IdAlt;
                    cmd.Parameters.Add("@hora_inicio", SqlDbType.DateTime).Value = obj.HoraInicio;
                    cmd.Parameters.Add("@hora_fim", SqlDbType.DateTime).Value = obj.HoraFim;


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
