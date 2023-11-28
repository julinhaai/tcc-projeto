using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace prj_TCC.telas_html
{
    public partial class cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void ddlCPFouCNPJ_SelectedIndexChanged(object sender, EventArgs e)
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
        protected void btnCadastro_Click(object sender, EventArgs e)
        {
           if (txtNome.Text == string.Empty || txtEmail.Text == string.Empty || txtSenha.Text == string.Empty || txtConfirma.Text == string.Empty)
            {
                //lblobs.Text = "Digite todos os campos";
            }
            else
            {
                MySqlConnection conexao = Conexao();
                //string comando = "INSERT INTO tb_publico nm_usuario, ds_emailUsuario, cd_cpfUsuario, nm_senha) VALUES( @nm_usuario, @ds_emailUsuario, @cd_cpfUsuario, @nm_senha)";
                string comando = "INSERT INTO `bd_ideiasvivas`.`tb_publico` (`cd_usuario`, `nm_usuario`, `ds_emailUsuario`, `cd_cpfUsuario`, `nm_senha`) VALUES('2', @nm_usuario, @ds_emailUsuario, @cd_cpfUsuario, @nm_senha)";
                MySqlCommand inserir = new MySqlCommand(comando, conexao);
                inserir.Parameters.AddWithValue("@nm_usuario", "" + txtNome.Text + "");
                inserir.Parameters.AddWithValue("@ds_emailUsuario", "" + txtEmail.Text + "");
                inserir.Parameters.AddWithValue("@cd_cpfUsuario", "" + txtCPFouCNPJ.Text + "");
                inserir.Parameters.AddWithValue("@nm_senha", "" + txtSenha.Text + "");
                inserir.ExecuteNonQuery();
                conexao.Close();
                Limpar();
                //lblobs.Text = "Cadastrado com sucesso!";
                //Response.Redirect("projetos.aspx");
                Page_Load(sender, e);

            }

        }

        private void Limpar()
        {
            txtNome.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtSenha.Text = string.Empty;
            txtConfirma.Text = string.Empty;
            txtCPFouCNPJ.Text = string.Empty;
        }



    }

}