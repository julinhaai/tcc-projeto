<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testepuxar.aspx.cs" Inherits="prj_TCC.telas_html.testepuxar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Upload de Arquivo</h2>
            <asp:FileUpload ID="fileUpload" runat="server" /><br />
            <asp:Button ID="btnUpload" runat="server" Text="Enviar Arquivo" OnClick="btnUpload_Click" />
            <hr />
            <h2>Download de Arquivo</h2>
            <asp:DropDownList ID="ddlArquivos" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlArquivos_SelectedIndexChanged" />
            <asp:Button ID="btnDownload" runat="server" Text="Baixar Arquivo" OnClick="btnDownload_Click" />
        </div>
    </form>
</body>
</html>
