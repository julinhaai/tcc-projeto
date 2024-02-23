<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="prj_TCC.telas_html.inicio" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Ideias Vivas</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" type="text/css" href="estilo.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <script src="script-slider.js"></script>
    <form id="form1" runat="server">
    <!--barra de navegação-->
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
            <a href="suporte.aspx"style="--i:2;">Planos</a>
            <a href="sobre.aspx" style="--i:3;"></a>

        </nav>
    </header>
    <!-- fim barra de navegação-->

    <!-- inicio pagina principal-->
       <section class="home" id="home">
           <div class="content">
               <h1>Seja Bem-Vindo!</h1>
               <p>Aqui, no Ideias Vivas, os seus projetos acadêmicos têm a oportunidade de se tronar em grandes starups de sucesso. A sua chance de sucesso está aqui!
                   Vai perder essa oportunidade?</p>
               <a href="#"><button>Saiba mais!</button></a>
           </div>
           <div class="box-container">
               <div class="box">

               </div>
           </div>
       </section>
    </form>
</body>
</html>