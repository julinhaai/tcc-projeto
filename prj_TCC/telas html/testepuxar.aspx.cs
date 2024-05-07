using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace prj_TCC.telas_html
{
    public partial class testepuxar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarArquivosDropDownList();
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                try
                {
                    string nomeArquivo = Path.GetFileName(fileUpload.FileName);
                    string caminhoArquivo = "~/uploads/" + nomeArquivo;
                    string caminhoCompleto = Server.MapPath(caminhoArquivo);

                    fileUpload.SaveAs(caminhoCompleto);

                    string connectionString = "SERVER=localhost;UID=root;PASSWORD=root;DATABASE=bd_ideiasvivas";
                    using (MySqlConnection conexao = new MySqlConnection(connectionString))
                    {
                        conexao.Open();
                        string comandoSQL = "INSERT INTO tb_caminhoArquivo (nm_arquivo, ds_arquivo) VALUES (@nomeArquivo, @caminhoArquivo)";
                        using (MySqlCommand comando = new MySqlCommand(comandoSQL, conexao))
                        {
                            comando.Parameters.AddWithValue("@nomeArquivo", nomeArquivo);
                            comando.Parameters.AddWithValue("@caminhoArquivo", caminhoArquivo);
                            comando.ExecuteNonQuery();
                        }
                    }
                    CarregarArquivosDropDownList();
                    Response.Write("Arquivo enviado com sucesso!");
                }
                catch (Exception ex)
                {
                    Response.Write("Ocorreu um erro ao enviar o arquivo: " + ex.Message);
                }
            }
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            string nomeArquivo = ddlArquivos.SelectedValue;
            string caminhoArquivo = "~/uploads/" + nomeArquivo;
            string caminhoCompleto = Server.MapPath(caminhoArquivo);

            FileInfo arquivo = new FileInfo(caminhoCompleto);

            if (arquivo.Exists)
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + nomeArquivo);
                Response.TransmitFile(caminhoCompleto);
                Response.End();
            }
            else
            {
                Response.Write("Arquivo não encontrado!");
            }
        }

        protected void CarregarArquivosDropDownList()
        {
            ddlArquivos.Items.Clear();

            string connectionString = "SERVER=localhost;UID=root;PASSWORD=root;DATABASE=bd_ideiasvivas";
            using (MySqlConnection conexao = new MySqlConnection(connectionString))
            {
                conexao.Open();
                string comandoSQL = "SELECT nm_arquivo FROM tb_caminhoArquivo";
                using (MySqlCommand comando = new MySqlCommand(comandoSQL, conexao))
                {
                    using (MySqlDataReader reader = comando.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ddlArquivos.Items.Add(reader["nm_arquivo"].ToString());
                        }
                    }
                }
            }
        }

        protected void ddlArquivos_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }
    }
}