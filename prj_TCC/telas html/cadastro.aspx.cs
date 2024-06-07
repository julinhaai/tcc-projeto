﻿using System;
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
            //string selectedValue = DropDownList1.SelectedValue;
            //divAluno.Visible = selectedValue == "Aluno";
            //divUsuario.Visible = selectedValue == "Usuário";

            if (ddlitens.SelectedIndex == 0)
            {
                divAluno.Visible=false; 
                divUsuario.Visible=false;
            }
            if (ddlitens.SelectedIndex == 1)
            {
                divUsuario.Visible = false;
                divAluno.Visible = ddlitens.SelectedValue == "1";
            }
            if (ddlitens.SelectedIndex == 2)
            {
                divAluno.Visible = false;
                divUsuario.Visible = ddlitens.SelectedValue == "2";
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


        //protected void btnCadastro_Click(object sender, EventArgs e)
        //{
        //    if (txtNome.Text == string.Empty || txtEmail.Text == string.Empty || txtSenha.Text == string.Empty || txtConfirma.Text == string.Empty)
        //    {
        //        lblObs.Text = "Digite todos os campos";
        //    }
        //    else
        //    {
        //        MySqlConnection conexao = Conexao();
        //        //string comando = "INSERT INTO tb_publico nm_usuario, ds_emailUsuario, cd_cpfUsuario, nm_senha) VALUES( @nm_usuario, @ds_emailUsuario, @cd_cpfUsuario, @nm_senha)";
        //        //conexao.Open();
        //        MySqlCommand cSQL = new MySqlCommand("SELECT * FROM tb_usuario WHERE cd_cpfUsuario = @cd_cpfUsuario", conexao);
        //        cSQL.Parameters.AddWithValue("@cd_cpfUsuario", txtCPF.Text);
        //        MySqlDataReader dados = cSQL.ExecuteReader();


        //        if (dados.Read())
        //        {
        //            txtCPF.Text = "CPF= " + dados[0].ToString();
        //            limpar_cpf();
        //            //lblNome.Text = "Nome= " + dados[1].ToString();
        //            //lblEmail.Text = "Email= " + dados[3].ToString();
        //            //lblSenha.Text = "Senha= " + dados[2].ToString();
        //            conexao.Close();
        //            lblObs.Text = "CPF já cadastrado!";
        //            txtCPF.Focus();

        //        }
        //        else
        //        {
        //            dados.Close();
        //            string comando = "INSERT INTO `bd_ideiasvivas`.`tb_usuario` (`cd_cpfUsuario`, `nm_usuario`, `cd_senha`,`ds_email`) VALUES( @cd_cpfUsuario, @nm_usuario, @cd_senha ,@ds_email)";
        //            MySqlCommand inserir = new MySqlCommand(comando, conexao);
        //            inserir.Parameters.AddWithValue("@cd_cpfUsuario", "" + txtCPF.Text + "");
        //            inserir.Parameters.AddWithValue("@nm_usuario", "" + txtNome.Text + "");
        //            inserir.Parameters.AddWithValue("@cd_senha", "" + txtSenha.Text + "");
        //            inserir.Parameters.AddWithValue("@ds_email", "" + txtEmail.Text + "");
        //            if (ClasseGeral.clsGeral.ValidaCPF(txtCPF.Text))
        //            {

        //                if (txtSenha.Text == txtConfirma.Text || (ClasseGeral.clsGeral.ValidaCPF(txtCPF.Text)))
        //                {

        //                    inserir.ExecuteNonQuery();
        //                    conexao.Close();

        //                    //Response.Redirect("");
        //                    Limpar();
        //                    lblObs.Text = "Cadastrado com sucesso!";
        //                    //Response.Redirect("projetos.aspx");
        //                    Page_Load(sender, e);


        //                }
        //                else
        //                {
        //                    lblObs.Text = "As senhas não conferem. Digite novamente.";
        //                    txtSenha.Focus();

        //                }
        //                return;


        //            }
        //            else
        //            {
        //                lblCPF.Text = "CPF Inválido, digite novamente!";
        //                txtCPF.Focus();
        //                return;
        //            }

        //        }



        //    }


        //}

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

        protected void btnCadastroAluno_Click(object sender, EventArgs e)
        {
            if (txtNomeAluno.Text == string.Empty || txtEmailAluno.Text == string.Empty || txtRM.Text == string.Empty || txtSenhaAluno.Text == string.Empty || txtConfirmaAluno.Text == string.Empty)
            {
                lblObsAluno.Text = "Digite todos os campos!" ;
            }
            using (MySqlConnection conn = Conexao()) 
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
               
        }

        protected void btnCadastroUsuario_Click(object sender, EventArgs e)
        {
            using (MySqlConnection conn = Conexao())
            {
                string query = "INSERT INTO tb_usuario (cd_cpfUsuario, nm_usuario, cd_senha,ds_email,) VALUES (@cd_cpfUsuario, @nm_usuario, @cd_senha, @ds_email)";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@cd_cpfUsuario", txtCPFUsuario.Text);
                cmd.Parameters.AddWithValue("@nm_usuario", txtNomeUsuario.Text);
                cmd.Parameters.AddWithValue("@cd_senha", txtSenhaUsuario.Text);
                cmd.Parameters.AddWithValue("@ds_email", txtEmailUsuario.Text);
                cmd.ExecuteNonQuery();
                lblObsUsuario.Text = "Usuário cadastrado com sucesso!";
            }
        }
    }
    
}
