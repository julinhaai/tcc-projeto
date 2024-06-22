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
            if (Session["NomeUsuario"] != null)
            {
                lblNomeUsuario.Text = "Bem-vindo, " + Session["NomeUsuario"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

    }
}