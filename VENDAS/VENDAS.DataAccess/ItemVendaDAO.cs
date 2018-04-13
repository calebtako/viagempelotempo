using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using VENDAS.Models;

namespace VENDAS.DataAccess
{
    public class ItemVendaDAO
    {
        public void Inserir(ItemVenda obj)
        {
            //Criando uma conexão com o banco de dados
            using (SqlConnection conn =
                new SqlConnection(@"Initial Catalog=ExemploVendas;
                                    Data Source=localhost;
                                    Integrated Security=SSPI;"))
            {
                //Criando instrução sql para inserir na tabela de contatos
                string strSQL = @"INSERT INTO item_venda (id_venda, produto, quantidade, valor_unitario) 
                                  VALUES (@id_venda, @produto, @quantidade, @valor_unitario);
                                  SELECT SCOPE_IDENTITY();";

                //Criando um comando sql que será executado na base de dados
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    cmd.Connection = conn;
                    //Preenchendo os parâmetros da instrução sql
                    cmd.Parameters.Add("@id_venda", SqlDbType.Int).Value = obj.Venda.Id;
                    cmd.Parameters.Add("@produto", SqlDbType.VarChar).Value = obj.Produto;
                    cmd.Parameters.Add("@quantidade", SqlDbType.Int).Value = obj.Quantidade;
                    cmd.Parameters.Add("@valor_unitario", SqlDbType.Decimal).Value = obj.ValorUnitario;

                    //Abrindo conexão com o banco de dados
                    conn.Open();
                    //Executando instrução sql
                    obj.Id = Convert.ToInt32(cmd.ExecuteScalar());
                    //Fechando conexão com o banco de dados
                    conn.Close();
                }
            }
        }

        public List<ItemVenda> BuscarPorVenda(int idVenda)
        {
            var lst = new List<ItemVenda>();

            //Criando uma conexão com o banco de dados
            using (SqlConnection conn =
                new SqlConnection(@"Initial Catalog=ExemploVendas;
                                    Data Source=localhost;
                                    Integrated Security=SSPI;"))
            {
                //Criando instrução sql para selecionar todos os registros na tabela de contatos
                string strSQL = @"SELECT * FROM item_venda where id_venda = " + idVenda + ";";

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
                        var itemVenda = new ItemVenda()
                        {
                            Id = Convert.ToInt32(row["id"]),
                            Venda = new Venda() { Id = Convert.ToInt32(row["id_venda"]) },
                            Produto = row["produto"].ToString(),
                            Quantidade = Convert.ToInt32(row["quantidade"]),
                            ValorUnitario = Convert.ToInt32(row["valor_unitario"]),
                        };

                        lst.Add(itemVenda);
                    }
                }
            }

            return lst;
        }

        public List<ItemVenda> BuscarTodos()
        {
            var lst = new List<ItemVenda>();

            //Criando uma conexão com o banco de dados
            using (SqlConnection conn =
                new SqlConnection(@"Initial Catalog=ExemploVendas;
                                    Data Source=localhost;
                                    Integrated Security=SSPI;"))
            {
                //Criando instrução sql para selecionar todos os registros na tabela de contatos
                string strSQL = @"SELECT * FROM item_venda;";

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
                        var itemVenda = new ItemVenda()
                        {
                            Id = Convert.ToInt32(row["id"]),
                            Venda = new Venda() { Id = Convert.ToInt32(row["id_venda"]) },
                            Produto = row["produto"].ToString(),
                            Quantidade = Convert.ToInt32(row["quantidade"]),
                            ValorUnitario = Convert.ToInt32(row["valor_unitario"]),
                        };

                        lst.Add(itemVenda);
                    }
                }
            }

            return lst;
        }
    }
}
