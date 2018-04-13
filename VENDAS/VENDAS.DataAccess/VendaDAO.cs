using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using VENDAS.Models;

namespace VENDAS.DataAccess
{
    public class VendaDAO
    {
        public void Inserir(Venda obj)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn =
                new SqlConnection(@"Initial Catalog=ExemploVendas;
                        Data Source=localhost;
                        Integrated Security=SSPI;"))
            {
                //Criando instrução sql para inserir na tabela de contatos
                string strSQL = @"INSERT INTO venda (codigo, cliente, data) VALUES (@codigo, @cliente, @data);
                                  SELECT SCOPE_IDENTITY();";

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    cmd.Connection = conn;
                    //Preenchendo os parâmetros da instrução sql
                    cmd.Parameters.Add("@codigo", SqlDbType.VarChar).Value = obj.Codigo;
                    cmd.Parameters.Add("@cliente", SqlDbType.VarChar).Value = obj.Cliente;
                    cmd.Parameters.Add("@data", SqlDbType.DateTime).Value = obj.Data;

                    //Abrindo conexão com o banco de dados
                    conn.Open();
                    //Executando instrução sql
                    obj.Id = Convert.ToInt32(cmd.ExecuteScalar());
                    //Fechando conexão com o banco de dados
                    conn.Close();
                }
            }
        }

        public Venda BuscarPorId(int id)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn =
                new SqlConnection(@"Initial Catalog=ExemploVendas;
                                    Data Source=localhost;
                                    Integrated Security=SSPI;"))
            {
                //Criando instrução sql para selecionar todos os registros na tabela de contatos
                string strSQL = @"SELECT * FROM venda where id = " + id + ";";

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

                    var venda = new Venda()
                    {
                        Id = Convert.ToInt32(row["id"]),
                        Codigo = row["codigo"].ToString(),
                        Cliente = row["cliente"].ToString(),
                        Data = Convert.ToDateTime(row["data"])
                    };

                    return venda;
                }
            }

        }

        public List<Venda> BuscarTodos()
        {
            var lst = new List<Venda>();

            //Criando uma conexão com o banco de dados
            using (SqlConnection conn =
                new SqlConnection(@"Initial Catalog=ExemploVendas;
                                    Data Source=localhost;
                                    Integrated Security=SSPI;"))
            {
                //Criando instrução sql para selecionar todos os registros na tabela de contatos
                string strSQL = @"SELECT * FROM venda;";

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

                    //Percorrendo todos os registros encontrados na base de dados e adicionando em uma lista
                    foreach (DataRow row in dt.Rows)
                    {
                        var venda = new Venda()
                        {
                            Id = Convert.ToInt32(row["id"]),
                            Codigo = row["codigo"].ToString(),
                            Cliente = row["cliente"].ToString(),
                            Data = Convert.ToDateTime(row["data"])
                        };

                        lst.Add(venda);
                    }
                }
            }

            return lst;
        }
    }
}
