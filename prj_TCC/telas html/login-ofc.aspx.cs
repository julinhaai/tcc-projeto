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
            if (!IsPostBack)
            {
                //DropDownList1.Items.Insert(0, new ListItem("---Selecione---", ""));
                divAdministrador.Visible = false;   
                divAluno.Visible = false;
                divUsuario.Visible = false;

            }
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

        protected void btnloginAdministrador_Click(object sender, EventArgs e)
        {
            string rm = txtRMAdministrador.Text;
            string senha = txtSenhaAdministrador.Text;

            if (Login("tb_administrador", "cd_RMadministrador", "cd_senhaAdministrador", "nm_administrador", rm, senha))
            {
                Response.Redirect("minhaarea.aspx");
            }
            else
            {
                lblObs.Text = "RM ou senha incorretos.";
                Limpar();
            }
        }

        protected void btnloginAluno_Click(object sender, EventArgs e)
        {
            string rm = txtRMAluno.Text;
            string senha = txtSenhaAluno.Text;

            if (Login("tb_aluno", "cd_RMAluno", "cd_senhaAluno", "nm_aluno", rm, senha))
            {
                Response.Redirect("minhaarea.aspx");
            }
            else
            {
                lblObs.Text = "RM ou senha incorretos.";
                Limpar();
            }
        }

        protected void btnloginUsuario_Click(object sender, EventArgs e)
        {
            string cpf = txtCPFUsuario.Text;
            string senha = txtSenhaUsuario.Text;

            if (Login("tb_usuario", "cd_cpfUsuario", "cd_senha", "nm_usuario", cpf, senha))
            {
                Response.Redirect("projetos.aspx");
            }
            else
            {
                lblObs.Text = "CPF ou senha incorretos.";
                Limpar();
            }
        }

        private bool Login(string tabela, string colunaIdentificador, string colunaSenha, string colunaNome, string identificador, string senha)
        {
            using (MySqlConnection conexao = Conexao())
            {
                string query = $"SELECT {colunaNome}, {colunaSenha} FROM {tabela} WHERE {colunaIdentificador} = @identificador";
                MySqlCommand cmd = new MySqlCommand(query, conexao);
                cmd.Parameters.AddWithValue("@identificador", identificador);

                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string senhaArmazenada = reader[colunaSenha].ToString();
                        string nomeUsuario = reader[colunaNome].ToString();
                        if (VerificarSenha(senha, senhaArmazenada))
                        {
                            Session["NomeUsuario"] = nomeUsuario;
                            return true;
                        }
                    }
                    return false;
                }
            }
        }

        // Função simplificada para verificar se a senha digitada pelo usuário é correta
        private bool VerificarSenha(string senhaDigitada, string senhaArmazenada)
        {
            return senhaDigitada == senhaArmazenada;
        }




        private void Limpar()
        {
            txtRMAdministrador.Text = string.Empty;
            txtSenhaAdministrador.Text = string.Empty;
            txtRMAluno.Text = string.Empty;
            txtSenhaAluno.Text = string.Empty;
            txtCPFUsuario.Text = string.Empty;
            txtSenhaUsuario.Text = string.Empty;
        }

        protected void ddllogin_SelectedIndexChanged(object sender, EventArgs e)
        {
            divAdministrador.Visible=false;
            divAluno.Visible = false;
            divUsuario.Visible = false;

            if (ddllogin.SelectedValue == "1")
            {
                divAdministrador.Visible = true;
            }
            else if (ddllogin.SelectedValue == "2")
            {
                divAluno.Visible = true;
            }
            else if (ddllogin.SelectedValue == "3")
            {
                divUsuario.Visible=true;
            }
        }
    }
    
}
