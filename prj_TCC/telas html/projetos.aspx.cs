using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace prj_TCC.telas_html
{
    public partial class projetos : System.Web.UI.Page
    {
        public class Project
        {
            public int Id { get; set; }
            public string Name { get; set; }
        }
        private static MySqlConnection Conexao()
        {
            string strConexao = "SERVER=localhost;";                   // crio a string de conexão com todos os dados                
            strConexao += "UID=root;";                                 // do servidor, nome, senha, banco
            strConexao += "PASSWORD= root;";                           //senha
            strConexao += "DATABASE=bd_ideiasvivas";                        // Schema/Banco
            MySqlConnection conexao = new MySqlConnection(strConexao); // crio o objeto para conexão                           
            conexao.Open();                                            // abro a conexão
            return conexao;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MySqlConnection conexao = new MySqlConnection Conexao();
                string comando = "SELECT * ";
                comando += " FROM tb_projeto WHERE nm_projeto  ";
                comando += " AND ds_resumoProjeto  ";
                comando += "'" + txtEmail.Text + "' AND cd_senha = ";
                comando += "'" + txtSenha.Text + "'";
                MySqlCommand cSQL = new MySqlCommand(comando, conexao);
                MySqlDataReader dados = cSQL.ExecuteReader();
                //MySqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    string nome = reader.GetString(0);
                    string descricao = reader.GetString(1);

                    AdicionarProjetoNaPaginaInicial(nome, descricao);
                }

                conexao.Close();
            }

        }
        private void AdicionarProjetoNaPaginaInicial(object sender,EventArgs e)
        {
        
            
        }
    }
}