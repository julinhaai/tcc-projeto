using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prj_TCC.telas_html
{
    public partial class meusprojetos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnalterar_Click(object sender, EventArgs e)
        {
            //if (fileUpload.HasFile)
            //{
            //    try
            //    {
            //        string filename = Path.GetFileName(fileUpload.FileName);
            //        string extension = Path.GetExtension(filename);
            //        // Validar a extensão do arquivo, por exemplo: permitir apenas imagens
            //        if (extension == ".jpg" || extension == ".png" || extension == ".gif")
            //        {
            //            string savePath = Server.MapPath("~/Images/") + filename;
            //            fileUpload.SaveAs(savePath);
            //            // Atualizar o banco de dados com o caminho da nova imagem de perfil
            //            // Por exemplo, usando Entity Framework ou ADO.NET
            //            // Exemplo com Entity Framework: user.ImagePath = "~/Images/" + filename;
            //            // dbContext.SaveChanges();
            //            Response.Write("Upload successful!");
            //        }
            //        else
            //        {
            //            Response.Write("Invalid file format.");
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        Response.Write("Error: " + ex.Message);
            //    }
            //}
            //else
            //{
            //    Response.Write("Please select a file to upload.");
            //}
        }
    }
}
    
