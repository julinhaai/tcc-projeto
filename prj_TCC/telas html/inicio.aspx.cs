﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prj_TCC.telas_html
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["NomeUsuario"] != null)
                {
                    lblNomeUsuario.Text = "Bem-vindo, " + Session["NomeUsuario"].ToString();
                    // Exibe o atalho "Minha Área"-
                    lnkMinhaArea.Visible = true;
                }
                //else
                //{
                //    // Se o nome do usuário não estiver na sessão, redirecione para a página de login
                //    Response.Redirect("login.aspx"); 
                //}
            }
        }

        protected void BtnProjetos_Click(object sender, EventArgs e)
        {
            Response.Redirect("projetos.aspx");
        }

        protected void btncadastro_Click(object sender, EventArgs e)
        {
            Response.Redirect("cadastro.aspx");
        }
    }
}