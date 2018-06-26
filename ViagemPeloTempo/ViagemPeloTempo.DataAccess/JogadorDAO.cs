using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using ViagemPeloTempo.Models;

namespace ViagemPeloTempo.DataAccess
{
    public class JogadorDAO
    {
        public void Inserir(Jogador obj)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                //Criando instrução sql para inserir na tabela de estados
                string strSQL = @"INSERT INTO Jogador (nomeusuario, senha, email) 
                                  VALUES (@nomeusuario, @senha, @email);";

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    cmd.Connection = conn;
                    //Preenchendo os parâmetros da instrução sql
                    cmd.Parameters.Add("@nomeusuario", SqlDbType.VarChar).Value = obj.NomeUsuario;
                    cmd.Parameters.Add("@senha", SqlDbType.VarChar).Value = obj.Senha;
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
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                //Criando instrução sql para selecionar todos os registros na tabela de usuarios
                string strSQL = @"SELECT * FROM jogador where email = @email or senha = @senha;";

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
                        Administrador = Convert.ToBoolean(row["administrador"])
                    };

                    return usuario;
                }
            }
        }

        public Jogador VerPerfil(int usuarioId)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                //Criando instrução sql para selecionar todos os registros na tabela de usuarios
                string strSQL = @"SELECT * FROM jogador where idjogador =" + usuarioId;

  
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

                    if (!(dt != null && dt.Rows.Count > 0))
                        return null;

                    var row = dt.Rows[0];
                    var perfil = new Jogador()
                    {
                        IdUsuario = Convert.ToInt32(row["idjogador"]),
                        NomeUsuario = row["nomeusuario"].ToString(),
                        Email = row["email"].ToString(),
                        Senha = row["senha"].ToString()
                    };

                    return perfil;
                }
            }
        }

        
    }
}
