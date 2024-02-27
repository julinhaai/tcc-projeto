<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="prj_TCC.telas_html.inicio" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Ideias Vivas</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" type="text/css" href="estilo.css" />
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
            <a href="suporte.aspx"style="--i:2;">Planos</a>
            <a href="sobre.aspx" style="--i:3;"></a>

        </nav>
    </header>
    <!-- fim barra de navegação-->

    <!-- inicio pagina principal-->
       <section class="home" id="home">
           <div class="content">
               <h1>Guardando Conhecimento, expondo talentos.</h1>
               <p>Aqui, no Ideias Vivas, os seus projetos acadêmicos têm a oportunidade de se tronar em grandes starups. A sua chance de sucesso está aqui!
                   Vai perder essa oportunidade?</p>
               <a href="cadastro.aspx"><button>Saiba mais!</button></a>
           </div>
           <div class="box-container">

               <div class="box">
                   <i class='bx bx-desktop'></i>
                   <h3>Inovação sempre!</h3>
                   <p>Você encontrará projetos inovadores e criativos, sempre olhando além.</p>
               </div>

               <div class="box">
                   <i class='bx bx-color'></i>
                   <h3>Pluralidade tech!</h3>
                   <p>Desde um sistema comercial, até a criação de um smartphone. Tem de tudo!</p>
               </div>

               <div class="box">
                   <i class='bx bxs-group'></i>
                   <h3>Comunidade ativa!</h3>
                   <p>Alunos e professores,todos juntos construindo um futuro promissor.</p>
               </div>
           </div>
       </section>
    <!-- fim pagina principal-->
    
    <!-- início nossos sucessos-->
        <section class="sucessos" id="sucessos">
            <h1 class="heading">Nossos sucessos!</h1>
            <h3 class="title">Confira os projetos que ganharam vida!</h3>
            <div class="linha">
                
            </div>
        </section>
    <!-- fim nossos sucessos-->
    









        <script src="script.js"></script>
    </form>
</body>
</html>