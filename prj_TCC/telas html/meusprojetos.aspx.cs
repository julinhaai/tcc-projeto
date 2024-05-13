using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace prj_TCC.telas_html
{
    public partial class meusprojetos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // Verificar se o usuário está logado
            if (Session["NomeUsuario"] == null)
            {
                // Se o nome do usuário não estiver na sessão, redirecionar para a página de login ou tomar outra ação adequada
                Response.Redirect("~/PaginaDeLogin.aspx");
            }

            string nomeUsuario = Session["NomeUsuario"].ToString();

            // Consultar o banco de dados para obter os projetos do usuário atual
            string connectionString = "sua_string_de_conexão";
            string query = "SELECT p.Nome, p.Resumo, p.Foto FROM Projeto p INNER JOIN RMAdministrador r ON p.cd_RMadministrador = r.cd_RMadministrador WHERE r.Nome = @NomeUsuario";

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@NomeUsuario", nomeUsuario);

                    connection.Open();
                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        // Exibir os projetos na página
                        while (reader.Read())
                        {
                            string nomeProjeto = reader["Nome"].ToString();
                            string resumoProjeto = reader["Resumo"].ToString();
                           /* byte[] fotoProjeto = (byte[])reader["Foto"]; */// Supondo que a foto seja armazenada como um array de bytes no banco de dados

                            // Exibir informações do projeto
                            Response.Write("<h2>Projeto: " + nomeProjeto + "</h2>");
                            Response.Write("<p>Resumo: " + resumoProjeto + "</p>");

                            // Exibir a foto do projeto
                            //string imagemBase64 = Convert.ToBase64String(fotoProjeto);
                            //string imagemSrc = string.Format("data:image/jpeg;base64,{0}", imagemBase64);
                            //Response.Write("<img src='" + imagemSrc + "' alt='Foto do Projeto' />");
                        }
                    }
                }
            }
        }

        protected void btnalterar_Click(object sender, EventArgs e)
        {
          
        }
    }
}
    
