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