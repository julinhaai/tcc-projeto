using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prj_TCC.telas_html
{
    public partial class minhaarea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["NomeUsuario"] != null)
                {
                    lblNomeUsuario.Text = "Bem-vindo, " + Session["NomeUsuario"].ToString();
                    // Exibe o atalho "Minha Área"-
                   //lnkMinhaArea.Visible = true;
                }
            }

        }

        protected void btnsair_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }

        //protected void VerificarLogin()
        //{
        //    // Verifica se o usuário está logado
        //    if (Session["Usuario"] != null)
        //    {
        //        // Se estiver logado, exibe o nome de usuário
        //        string nomeUsuario = Session["Usuario"].ToString();
        //        lblNomeUsuario.Text = "Bem-vindo, " + nomeUsuario + "!";
        //    }
        //    else
        //    {
        //        // Se não estiver logado, redireciona para a página de login
        //        Response.Redirect("~/login-ofc.aspx");

        //    }






    }
}      


    