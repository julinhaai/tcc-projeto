<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="meusprojetos.aspx.cs" Inherits="prj_TCC.telas_html.meusprojetos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNomeUsuario" runat="server" Text="Label"></asp:Label>
            Projeto Sonhos sobre Rodas
            <img src="img/souluna.jpg" />
            <asp:Button ID="btnalterar" runat="server" Text="Alterar Imagem" OnClick="btnalterar_Click" />
            
        </div>
    </form>
</body>
</html>
