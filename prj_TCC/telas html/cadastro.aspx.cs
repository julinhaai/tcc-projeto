using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prj_TCC.telas_html
{
    public partial class cadastro : System.Web.UI.Page
    {
        

        protected void ddlCPFouCNPJ_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblResult.Text = ddlCPFouCNPJ.SelectedValue;
        }
    }
}