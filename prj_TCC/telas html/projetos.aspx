<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projetos.aspx.cs" Inherits="prj_TCC.telas_html.projetos" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Ideias Vivas</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" type="text/css" href="estilo.css" />
    <script src='script.js'></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
       <form id="form1" runat="server">
    <header>
        <a href="#"class="logo img">
            <img src="img/19 Sem Título (1).png" alt="logo">
        </a>
        <i class='bx bx-menu' id="menu"></i>
        <ul class="navbar">
            <asp:Button ID="BtnInicio" CssClass="navbtn" runat="server" Text="Início" />
            <asp:Button ID="BtnProjetos" CssClass="navbtn" runat="server" Text="Projetos" />
            <asp:Button ID="BtnSuporte" CssClass="navbtn" runat="server" Text="Suporte" />
            <asp:Button ID="BtnSobre" CssClass="navbtn" runat="server" Text="Sobre Nós" />
        </ul>
        <div class="header-icon">
            
        </div>
    </header>
    </form>
</body>
</html>
