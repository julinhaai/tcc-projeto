<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aaaa.aspx.cs" Inherits="prj_TCC.telas_html.aaaa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <form id="form2" runat="server">
<div class="cadastro">
        <section>
            <h1>Vamos Começar?</h1>

            <asp:Panel ID="pnlcampocadastro" runat="server">
            <asp:Label ID="lbNome" runat="server" Text="Nome"></asp:Label><br />
            <asp:TextBox ID="txtNome" runat="server" placeholder="Nome"></asp:TextBox>
                <br />
            <asp:Label  ID="lbEmail" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                <asp:Button ID="btnsalvar" runat="server" Text="salvar" OnClick="btnsalvar_Click" />
                </asp:Panel>
            <hr />
            <asp:Panel ID="pnlresultado" runat="server">
                <asp:Button ID="bntcadastro" runat="server" Text="Novo Cadastro" OnClick="bntcadastro_Click" />
                <asp:GridView ID="gridresultado" runat="server" OnSelectedIndexChanged="gridresultado_SelectedIndexChanged"></asp:GridView>
                </asp:Panel>

        </section>
    </div>
</form>
</body>
</html>
