using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;
using System.Text;


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
            string comando = "SELECT * ";
            comando += "FROM tb_usuario WHERE ds_email = ";
            comando += "'" + txtEmail.Text + "' AND cd_senha = ";
            comando += "'" + txtSenha.Text + "'";
            MySqlCommand cSQL = new MySqlCommand(comando, conexao);
            MySqlDataReader dados = cSQL.ExecuteReader();

            if (dados.HasRows)
            {
                dados.Read();
                //Session["NomeUsuario"] = dados[1].ToString(); // Substitua "nome" pelo nome da coluna que contém o nome do usuário
                string senhaArmazenada = dados["cd_senha"].ToString(); // Obtendo a senha armazenada no banco de dados
                string senhaDigitada = txtSenha.Text;
                if (VerificarSenha(senhaDigitada, senhaArmazenada))
                {
                    // Senha correta, autenticar o usuário
                    Session["NomeUsuario"] = dados[1].ToString(); // Substitua "nome" pelo nome da coluna que contém o nome do usuário
                    Response.Redirect("projetos.aspx");
                }
                else
                {// Senha incorreta
                    Limpar();
                    lblObs.Text = "Senha incorreta.";

                }
                Response.Redirect("inicio.aspx");
            }
            else
            {
                Limpar();
                lblObs.Text = "Usuário não cadastrado ou senha incorreta.";
            }

            conexao.Close();

        }
        // Função para verificar se a senha digitada pelo usuário é correta
        private bool VerificarSenha(string senhaDigitada, string senhaArmazenada)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                // Obtemos o hash da senha digitada pelo usuário
                byte[] bytesSenhaDigitada = sha256.ComputeHash(Encoding.UTF8.GetBytes(senhaDigitada));
                StringBuilder builder = new StringBuilder();

                // Convertendo o array de bytes em uma string hexadecimal
                for (int i = 0; i < bytesSenhaDigitada.Length; i++)
                {
                    builder.Append(bytesSenhaDigitada[i].ToString("x2"));
                }
                string senhaDigitadaHash = builder.ToString();

                // Comparando o hash da senha digitada com o hash da senha armazenada
                return senhaDigitadaHash == senhaArmazenada;
            }
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
