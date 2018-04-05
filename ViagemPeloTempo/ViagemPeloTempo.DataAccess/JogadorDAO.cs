﻿using System;
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
        #region Inserir
        public void Inserir(Jogador obj)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn =
                new SqlConnection(@"Initial Catalog=viagempelotempo;
                        Data Source=localhost;
                        Integrated Security=SSPI;"))
            {
                //Criando instrução sql para inserir na tabela de estados
                string strSQL = @"INSERT INTO Jogador (nomeusuario, senha, nick, email) 
                                  VALUES (@nomeusuario, @senha, @nick, @email );";

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
        #endregion

        #region PagPerfil

        public Jogador BuscarPerfil(Jogador per)
        {
           
            using (SqlConnection conn =
                   new SqlConnection(@"Initial Catalog=viagempelotempo;
                        Data Source=localhost;
                        Integrated Security=SSPI;"))
            {
                cmd.Parameters.Add("@nome", SqlDbType.VarChar).Value = per.NomeUsuario;
                string strSQL = @"SELECT * from Jogador where nomeusuario like '@nome';";

                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    conn.Open();
                    cmd.Connection = conn;
                    cmd.CommandText = strSQL;
                    var dataReader = cmd.ExecuteReader();
                    var dt = new DataTable();
                    dt.Load(dataReader);
                    conn.Close();
                }
            }
            // return lst;
        }

        #endregion
    }
}
