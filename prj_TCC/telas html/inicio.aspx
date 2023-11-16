<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="prj_TCC.telas_html.inicio" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Ideias Vivas</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" type="text/css" href="estilo.css" />
    <script src='script.js'></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css"crossoringin="">
</head>
<body>
    <form id="form1" runat="server">
    <header class="header">
        <a href="#" class="logo"><img src="#" /><span>Ideias Vivas</span></a>
        <ul class="navbar">
            <li><a href="inicio.aspx">Início</a></li>
            <li><a href="projetos.aspx">Projetos</a></li>
            <li><a href="suporte.aspx">Suporte</a></li>
            <li><a href="sobre.aspx">Sobre Nós</a></li>
        </ul>

        <div class="main">
            <a href="#" class="user"><i class="ri-user-fill"></i>Login</a>
            <a href="#">Cadastre-se</a>
            <div class="bx bx-icon" id="menu-icon"></div>
        </div>
    </header>
    <%-- link do JS --%>
        <script src="script.js"></script>
    </form>
</body>
</html>