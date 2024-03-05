using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace prj_TCC
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
        protected void btnlogin2_Click(object sender, EventArgs e)
        {
            MySqlConnection conexao = Conexao();
            string comando = "Select * ";
            comando += " from tb_usuario WHERE ds_email = ";
            comando += "'" + txtEmail.Text + "'";

            MySqlCommand cSQL = new MySqlCommand(comando, conexao);              // executando o comando sql na conexao
                                                                                 // OdbcCommand cSQL = new OdbcCommand(comando, conexao);             // executando o comando sql na conexao
            MySqlDataReader dados = cSQL.ExecuteReader();
            if (!dados.HasRows)
            {
                Limpar();
                lblObs.Text = "Usuário não cadastrado.";
            }
            else
            {
                dados.Read();
               // lblCPF.Text = "CPF= " + dados[0].ToString();
                //lblNome.Text = "Nome= " + dados[1].ToString();
                lblEmail.Text = "Email= " + dados[3].ToString();
                lblSenha.Text = "Senha= " + dados[2].ToString();
                lblObs.Text = "Registro encontrado!";
                Response.Redirect("inicio.aspx");

            }
            conexao.Close();
        }
        private void Limpar()
        {
            //txtNome.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtSenha.Text = string.Empty;
            //txtConfirma.Text = string.Empty;
            //txtCPFouCNPJ.Text = string.Empty;
        }
    }
    
}
