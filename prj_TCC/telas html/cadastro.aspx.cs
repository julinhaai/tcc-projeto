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
        protected void Page_Load(object sender, EventArgs e)
        {
            mostrarLista();
            
        }
        private void mostrarLista()
            {
            pnlcampocadastro.Visible = false;
            pnlresultado.Visible = true;
            txtNome.Focus();

            gridresultado.DataSource = usuario.Lista;
            gridresultado.DataBind();
        }
        private void mostrarCadastro()
        {
            pnlcampocadastro.Visible = true;
            pnlresultado.Visible = false;

        }


    protected void gridresultado_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void bntcadastro_Click(object sender, EventArgs e)
        {
           
            mostrarCadastro();
            
        }

        protected void btnsalvar_Click(object sender, EventArgs e)
        {
            var usuario = new usuario();
            usuario.Nome = txtNome.Text;
            usuario.Telefone = txtEmail.Text;
            usuario.salvar();

            txtNome.Text = " ";
            txtEmail.Text = " ";

            mostrarLista();
        }
    }
}