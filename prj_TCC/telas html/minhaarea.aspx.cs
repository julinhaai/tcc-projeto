﻿using System;
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
            if (true)
            {

            }

        }

        protected void btnsair_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }
    }
}