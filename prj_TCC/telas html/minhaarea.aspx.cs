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
                }
                else
                {
                    lblNomeUsuario.Text = "Bem-vindo";
                }
            }
        }

        protected void btnsair_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("inicio.aspx"); // Redireciona para a página de login ou inicial
        }




        private void Limpar()
        {
            lblNomeUsuario.Text = string.Empty;
            
        }



    }
}      


    