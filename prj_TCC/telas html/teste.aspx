<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teste.aspx.cs" Inherits="prj_TCC.telas_html.teste" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
            <br />
            <asp:Button ID="btnUpload" runat="server" Text="Enviar Arquivos" OnClick="btnUpload_Click" />
        </div>


      <a href="testepuxar.aspx">VEM</a>

    </form>
</body>
</html>
