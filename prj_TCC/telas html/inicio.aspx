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
<%--importar fonte: bai jamjuree regular, medium, semibold--%>
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
            <asp:ImageButton ID="imgUser" runat="server" ImageUrl="~/telas html/img/user-circle-solid-24.png" />
        </div>
    </header>
    <section class="home" id="home">
        <div class="home-text">
            <h1>Seja bem-vindo!</h1>
            <p>Aqui é o lugar onde suas ideias ganham vida!</p>
            <div class="container">
                <asp:Button ID="BtnCadastro" CssClass="button" runat="server" Text="Faça Parte!" OnClick="BtnCadastro_Click1" />
            </div>
        </div>
        <div class="home-img">
            <img src="img/20231031_190612_0000.png">
        </div>
    </section>
        <div class="sucessos-text">
            <h2>Sucessos da ETECAF!</h2>
            <p>Confira os projetos mais promissores da ETEC, que conquistaram a bolsa da Unisantos e deram vida às suas ideias!</p><br />
        </div>
    </form>
</body>
</html>