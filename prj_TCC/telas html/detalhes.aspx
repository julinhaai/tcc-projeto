<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detalhes.aspx.cs" Inherits="prj_TCC.telas_html.detalhes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Na página detalhes.aspx -->
    <asp:Label ID="lblNomeProjeto" runat="server"></asp:Label>
    <asp:Label ID="lblDescricaoProjeto" runat="server"></asp:Label>
    <a href="editar.aspx?projetoId=ID_DO_PROJETO">Editar</a>

        </div>
    </form>
</body>
</html>
