<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="prj_TCC.telas_html.inicio" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Ideias Vivas</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" type="text/css" href="estilo.css" />
    <link rel="stylesheet" type="text/css" href="navbar.css" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/11.0.5/swiper-bundle.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <form id="form1" runat="server">

    <!--barra de navegação-->
    <header class="header">
        <a href="#" class="logo"><img src="img/logo-branca-removebg.png" />Ideias Vivas</a>
        <input type="checkbox" id="check" />
        <label for="check" class="icons">
            <i class='bx bx-menu' id="menu-icon"></i>
            <i class='bx bx-x' id="close-icon"></i>
        </label>

        <nav class="navbar">

            <a href="inicio.aspx" style="--i:0;">Início</a>
            <a href="projetos.aspx" style="--i:1;">Projetos</a>
            <a href="suporte.aspx"style="--i:2;">Suporte</a>
            <a href="suporte.aspx"style="--i:3;">Planos</a>
             <asp:Label ID="lblNomeUsuario" runat="server" Text=""></asp:Label>
            <asp:HyperLink ID="lnkMinhaArea"  runat="server" NavigateUrl="~/minhaarea.aspx">Minha Área</asp:HyperLink>
            <a href="cadastro.aspx" style="--i:5"class="btn-cadastro">Cadastre-se!</a>
        </nav>
    </header>
    <!--<a href="minhaarea.aspx" style="--i:4">Minha Área</a> --!>
    <!-- fim barra de navegação-->
    <!-- inicio pagina principal-->
       
        <section class="container"> 
            <div class="content__container">
                <h1>
                    Guardando<br />
                    <span class="heading__1">Conhecimento,</span><br />
                    <span class="heading__2">expondo Talentos</span>               
                </h1>
                <p>
                    Explore a inovação acadêmica em nossa plataforma, que conecta estudantes 
                    com ideias brilhantes a uma comunidade ativa interessada em celebrar e 
                    reconhecer seu potencial. Aqui, grandes ideias recebem o palco que merecem!
                </p>
                <a href="cadastro.aspx" class="btn-cta">Comece Agora!</a>
            </div>
            <div class="image__container">
               <img src="img/img-home-1.jpg" />
               <img src="img/img-home-2.jpg" />
                <div class="image__content">
                    <ul>
                        <li>Inicie sua jornada de inovação hoje!</li>
                        <li>Transforme ideias em projetos reais. Participe!</li>
                    </ul>
                </div>
            </div>
        </section>

    <!-- fim pagina principal-->
    <!-- início nossos sucessos-->
      
    <!-- fim nossos sucessos-->
    









        <script src="script.js"></script>
    </form>
</body>
</html>