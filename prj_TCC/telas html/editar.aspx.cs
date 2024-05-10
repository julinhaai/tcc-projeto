using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace prj_TCC.telas_html
{
    public partial class editar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Verificar se um ID de projeto foi passado como parâmetro na URL
                if (Request.QueryString["projetoId"] != null)
                {
                    // Obter o ID do projeto da URL
                    int projetoId = Convert.ToInt32(Request.QueryString["projetoId"]);

                    // Carregar as informações do projeto para edição
                    CarregarInformacoesDoProjeto(projetoId);
                }
            }

            if (!IsPostBack)
            {
                string nome = Request.QueryString["nome"];
                if (!string.IsNullOrEmpty(nome))
                {
                    MySqlConnection conexao = new MySqlConnection("SUA_STRING_DE_CONEXÃO");
                    string comando = "SELECT Nome, Descricao FROM projeto WHERE Nome = @Nome";
                    MySqlCommand cmd = new MySqlCommand(comando, conexao);
                    cmd.Parameters.AddWithValue("@Nome", nome);

                    conexao.Open();
                    MySqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        txtNome.Text = reader.GetString(0);
                        txtDescricao.Text = reader.GetString(1);
                    }

                    conexao.Close();
                }


            }

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {

            string nome = Request.QueryString["nome"];
            if (!string.IsNullOrEmpty(nome))
            {
                MySqlConnection conexao = new MySqlConnection("SUA_STRING_DE_CONEXÃO");
                string comando = "UPDATE projeto SET Nome = @Nome, Descricao = @Descricao WHERE Nome = @NomeOriginal";
                MySqlCommand cmd = new MySqlCommand(comando, conexao);
                cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                cmd.Parameters.AddWithValue("@NomeOriginal", nome);

                conexao.Open();
                cmd.ExecuteNonQuery();
                conexao.Close();

                // Redirecionar de volta para a página de detalhes
                Response.Redirect("detalhes.aspx?nome=" + txtNome.Text);
            }

        }
    }
}