using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace prj_TCC.telas_html
{
    public partial class cadastro : System.Web.UI.Page
    {
        //public virtual string UserName { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //colocar para identificar usuário.

            if (!IsPostBack)
            {
                //DropDownList1.Items.Insert(0, new ListItem("---Selecione---", ""));
                divAluno.Visible = false;
                divUsuario.Visible = false;

            }

        }
        protected void ddlitens_SelectedIndexChanged(object sender, EventArgs e)
        {
            divAluno.Visible = false;
            divUsuario.Visible = false;

            if (ddlitens.SelectedValue == "1")
            {
                divAluno.Visible = true;
            }
            else if (ddlitens.SelectedValue == "2")
            {
                divUsuario.Visible = true;
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

        private void limpar_cpf()
        {
            //txtCPF.Text = string.Empty;

        }

        private void Limpar()
        {
            //txtNome.Text = string.Empty;
            //txtEmail.Text = string.Empty;
            //txtSenha.Text = string.Empty;
            //txtConfirma.Text = string.Empty;
            //txtCPF.Text = string.Empty;
        }

        private bool CamposPreenchidosAluno()
        {
            return !(string.IsNullOrEmpty(txtNomeAluno.Text) || string.IsNullOrEmpty(txtEmailAluno.Text) || string.IsNullOrEmpty(txtRM.Text) || string.IsNullOrEmpty(txtSenhaAluno.Text) || string.IsNullOrEmpty(txtConfirmaAluno.Text));
        }

        private bool CamposPreenchidosUsuario()
        {
            return !(string.IsNullOrEmpty(txtNomeUsuario.Text) || string.IsNullOrEmpty(txtEmailUsuario.Text) || string.IsNullOrEmpty(txtCPFUsuario.Text) || string.IsNullOrEmpty(txtSenhaUsuario.Text) || string.IsNullOrEmpty(txtConfirmaUsuario.Text));
        }

        private bool SenhasConferem(string senha, string confirma)
        {
            if (senha == confirma)
            {
                return true;
            }
            else
            {
                lblObsUsuario.Text = "As senhas não conferem!";
                return false;
            }
        }

        private bool ValidaCPF(string cpf)
        {
            // Use sua DLL para validação de CPF
            return ClasseGeral.clsGeral.ValidaCPF(cpf);
        }

        private bool RegistroExiste(MySqlConnection conn, string tabela, string coluna, string valor)
        {
            string query = $"SELECT COUNT(*) FROM {tabela} WHERE {coluna} = @valor";
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@valor", valor);
            return Convert.ToInt32(cmd.ExecuteScalar()) > 0;
        }
    

       
        protected void btnCadastroAluno_Click(object sender, EventArgs e)
        {
            if (CamposPreenchidosAluno() && SenhasConferem(txtSenhaAluno.Text, txtConfirmaAluno.Text))
            {
                using (MySqlConnection conn = Conexao())
                {
                    if (!RegistroExiste(conn, "tb_aluno", "cd_RMAluno", txtRM.Text))
                    {
                        string query = "INSERT INTO tb_aluno (cd_RMAluno, ds_emailInstitucionalAluno, nm_aluno, cd_senhaAluno) VALUES (@cd_RMAluno, @ds_emailInstitucionalAluno, @nm_aluno, @cd_senhaAluno)";
                        MySqlCommand cmd = new MySqlCommand(query, conn);
                        cmd.Parameters.AddWithValue("@cd_RMAluno", txtRM.Text);
                        cmd.Parameters.AddWithValue("@ds_emailInstitucionalAluno", txtEmailAluno.Text);
                        cmd.Parameters.AddWithValue("@nm_aluno", txtNomeAluno.Text);
                        cmd.Parameters.AddWithValue("@cd_senhaAluno", txtSenhaAluno.Text);
                        cmd.ExecuteNonQuery();
                        lblObsAluno.Text = "Aluno cadastrado com sucesso!";
                    }
                    else
                    {
                        lblObsAluno.Text = "Aluno já cadastrado!";
                    }
                }
            }

        }

        protected void btnCadastroUsuario_Click(object sender, EventArgs e)
        {
            if (CamposPreenchidosUsuario() && SenhasConferem(txtSenhaUsuario.Text, txtConfirmaUsuario.Text) && ValidaCPF(txtCPFUsuario.Text))
            {
                using (MySqlConnection conn = Conexao())
                {
                    if (!RegistroExiste(conn, "tb_usuario", "cd_cpfUsuario", txtCPFUsuario.Text))
                    {
                        string query = "INSERT INTO tb_usuario (cd_cpfUsuario, nm_usuario, cd_senha, ds_email) VALUES (@cd_cpfUsuario, @nm_usuario, @cd_senha, @ds_email)";
                        MySqlCommand cmd = new MySqlCommand(query, conn);
                        cmd.Parameters.AddWithValue("@cd_cpfUsuario", txtCPFUsuario.Text);
                        cmd.Parameters.AddWithValue("@nm_usuario", txtNomeUsuario.Text);
                        cmd.Parameters.AddWithValue("@cd_senha", txtSenhaUsuario.Text);
                        cmd.Parameters.AddWithValue("@ds_email", txtEmailUsuario.Text);
                        cmd.ExecuteNonQuery();
                        lblObsUsuario.Text = "Usuário cadastrado com sucesso!";
                    }
                    else
                    {
                        lblObsUsuario.Text = "Usuário já cadastrado!";
                    }
                }


            }

        }
    }
    
}
