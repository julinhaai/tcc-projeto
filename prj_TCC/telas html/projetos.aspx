<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projetos.aspx.cs" Inherits="prj_TCC.telas_html.projetos" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Ideias Vivas</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" type="text/css" href="estilo.css" />
    <script src='script.js'></script>
    <script src="suporte.js"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
       <form id="form1" runat="server">
    <header class="header">
        <a href="#" class="logo"><img src="#" />Ideias Vivas</a>

        <input type="checkbox" id="check" />
        <label for="check" class="icons">
            <i class='bx bx-menu' id="menu-icon"></i>
            <i class='bx bx-x' id="close-icon"></i>
        </label>
        
        <nav class="navbar">

            <a href="inicio.aspx" style="--i:0;">Início</a>
            <a href="projetos.aspx" style="--i:1;">Projetos</a>
            <a href="suporte.aspx"style="--i:2;">Suporte</a>
            <a href="sobre.aspx" style="--i:3;">Sobre Nós</a>

        </nav>
    </header>
        <div class="container">
            <div class="pesquisa">

            </div>
        </div>
    </form>
</body>
</html>
