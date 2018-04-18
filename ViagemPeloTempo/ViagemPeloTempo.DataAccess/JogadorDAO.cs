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
    public class JogadorDAO
    {
        public void Inserir(Jogador obj)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(@"Initial Catalog=viagempelotempo; Data Source=localhost; Integrated Security=SSPI;"))
            {
                //Criando instrução sql para inserir na tabela de estados
                string strSQL = @"INSERT INTO Jogador (nomeusuario, senha, nick, email) 
                                  VALUES (@nomeusuario, @senha, @nick, @email);";

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    cmd.Connection = conn;
                    //Preenchendo os parâmetros da instrução sql
                    cmd.Parameters.Add("@nomeusuario", SqlDbType.VarChar).Value = obj.NomeUsuario;
                    cmd.Parameters.Add("@senha", SqlDbType.VarChar).Value = obj.Senha;
                    cmd.Parameters.Add("@nick", SqlDbType.VarChar).Value = obj.Nick;
                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = obj.Email;


                    //Abrindo conexão com o banco de dados
                    conn.Open();
                    //Executando instrução sql
                    cmd.ExecuteNonQuery();
                    //Fechando conexão com o banco de dados
                    conn.Close();
                }
            }
        }

        public Jogador Logar(Jogador obj)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(@"Initial Catalog=viagempelotempo; Data Source=localhost; Integrated Security=SSPI;"))
            {
                //Criando instrução sql para selecionar todos os registros na tabela de usuarios
                string strSQL = @"SELECT * FROM jogador where email = @email and senha = @senha;";

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    //Abrindo conexão com o banco de dados
                    conn.Open();
                    cmd.Connection = conn;
                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = obj.Email;
                    cmd.Parameters.Add("@senha", SqlDbType.VarChar).Value = obj.Senha;
                    cmd.CommandText = strSQL;
                    //Executando instrução sql
                    var dataReader = cmd.ExecuteReader();
                    var dt = new DataTable();
                    dt.Load(dataReader);
                    //Fechando conexão com o banco de dados
                    conn.Close();

                    if (!(dt != null && dt.Rows.Count > 0))
                        return null;

                    var row = dt.Rows[0];
                    var usuario = new Jogador()
                    {
                        IdUsuario = Convert.ToInt32(row["idjogador"]),
                        NomeUsuario = row["nomeusuario"].ToString(),
                        Email = row["email"].ToString(),
                        Senha = row["senha"].ToString(),
                        Nick = row["nick"].ToString(),
                        Administrador = Convert.ToBoolean(row["administrador"])
                    };

                    return usuario;
                }
            }
        }

    }
}
