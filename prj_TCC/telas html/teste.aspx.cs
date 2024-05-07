using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Web.UI.WebControls;


namespace prj_TCC.telas_html
{
    public partial class teste : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (Request.Files.Count > 0)
            {
                try
                {
                    string connectionString = "SERVER=localhost;UID=root;PASSWORD=root;DATABASE=bd_ideiasvivas";

                    using (MySqlConnection conexao = new MySqlConnection(connectionString))
                    {
                        conexao.Open();

                        string uploadFolder = Server.MapPath("~/uploads/");
                        if (!Directory.Exists(uploadFolder))
                        {
                            Directory.CreateDirectory(uploadFolder);
                        }

                        foreach (string fileName in Request.Files)
                        {
                            HttpPostedFile file = Request.Files[fileName];
                            string nomeArquivo = Path.GetFileName(file.FileName);
                            string caminhoArquivo = "~/uploads/" + nomeArquivo;

                            // Salva o arquivo no diretório de uploads
                            string caminhoCompleto = Path.Combine(uploadFolder, nomeArquivo);
                            file.SaveAs(caminhoCompleto);

                            // Insere o caminho do arquivo no banco de dados
                            string comandoSQL = "INSERT INTO tb_caminhoArquivo (nm_arquivo, ds_arquivo) VALUES (@nomeArquivo, @caminhoArquivo)";

                            using (MySqlCommand comando = new MySqlCommand(comandoSQL, conexao))
                            {
                                comando.Parameters.AddWithValue("@nomeArquivo", nomeArquivo);
                                comando.Parameters.AddWithValue("@caminhoArquivo", caminhoCompleto); // Salva o caminho completo
                                comando.ExecuteNonQuery();
                            }
                        }
                    }
                    Response.Write("Arquivos enviados e caminhos salvos com sucesso!");
                }
                catch (Exception ex)
                {
                    Response.Write("Ocorreu um erro ao enviar os arquivos: " + ex.Message);
                }
            }
        }
    }
}