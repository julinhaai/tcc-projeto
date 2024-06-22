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

         
        }

        protected void btnalterar_Click(object sender, EventArgs e)
        {
          
        }
    }
}
    
