<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projetos.aspx.cs" Inherits="prj_TCC.telas_html.projetos" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Ideias Vivas</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" type="text/css" href="navbar.css" />
    <link rel ="stylesheet" type="text/css" href="projetos.css" />
    <script src='script.js'></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
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
            <a href="sobre.aspx" style="--i:3;">Sobre Nós</a>
            <asp:Label ID="lblNomeUsuario" runat="server" Text=""></asp:Label>

        </nav>
    </header>
    <main>
        <div class="left"></div>
        <div class="right">
            <!--início barra lateral-->
    <div class="sidebar">
    <h2>Barra Lateral</h2>
  </div>
<!--fim barra lateral-->
  <div class="content">
    <div class="card-container">
        <div class="card">
            <img src="../img/img-home-1.jpg" />
            <div class="card-content">
                <h1 class="Titulodoprojeto">Sportech</h1>
                <p class="DescricaodoProjeto">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                    Curabitur semper magna vel leo auctor, at mattis mi laoreet.</p>
                <a href="#" class="card-button">Saiba Mais</a>
            </div>
        </div>
        <div class="card">
            <img src="../img/img-home-2.jpg" />
            <div class="card-content">
                <h1 class="Titulodoprojeto">Turisantos</h1>
                <p class="DescricaodoProjeto">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                    Curabitur semper magna vel leo auctor, at mattis mi laoreet.</p>
                <a href="#" class="card-button">Saiba Mais</a>
            </div>
        </div>
        <div class="card">
            <img src="../img/img-home-1.jpg" />
            <div class="card-content">
                <h1 class="Titulodoprojeto">STUDY</h1>
                <p class="DescricaodoProjeto">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                    Curabitur semper magna vel leo auctor, at mattis mi laoreet. </p>
                <a href="#" class="card-button">Saiba Mais</a>
            </div>
        </div>
    </div>
</div>
        </div>
    </main>
</body>
</html>
