<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editar.aspx.cs" Inherits="prj_TCC.telas_html.editar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Na página editar.aspx -->
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />

        </div>
    </form>
</body>
</html>
