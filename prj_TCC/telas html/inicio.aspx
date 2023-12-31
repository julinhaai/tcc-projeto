﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="prj_TCC.telas_html.inicio" %>

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
    <section class="home" id="home">
        <div class="home-texto">
            <h1>Seja bem-vindo!</h1>
            <p>Aqui é lugar onde suas ideias ganham vida!</p>
            <asp:Button ID="btnParte" CssClass="btn" runat="server" Text="Faça Parte" OnClick="BtnCadastro_Click1" />
        </div>
        <div class="home-img">
            <img src="img/home-img.png" />
        </div>
    </section>
    <section class="sucessos">
        <div class="sucessos-text">
            <h1>Confira os sucesoss da ETECAF!</h1>
            <p>Aqui estão os projetos promissores desta Etec que conquistaram uma vaga na UNISANTOS!</p>
        </div>
        <div class="card">
            <input type-="radio" name="select" id="slide-1" checked="true" />
            <input type-="radio" name="select" id="slide-2" />
            <input type-="radio" name="select" id="slide-3" />
            <input type="checkbox" id="slide-img" />

            <div class="slider">
                <label for="slide-1" class="slide slide_1"></label>
                <label for="slide-1" class="slide slide_2"></label>
                <label for="slide-1" class="slide slide_3"></label>
            </div>
            <div class="inner_part">
                <label for="slide-img" class="img-slide">
                    <img class="img-1" src="#" />
                </label>
                <div class="content content_1">
                    <div class="title">Quick Pen</div>
                    <div class="text">
                        uma empresa que visa o meio-ambiente e a produção de penas biodegradáveis, usadas como canetas.
                    </div>
                    <asp:Button ID="btnMais" runat="server" Text="Saiba Mais" />
                </div>
            </div>

             <div class="inner_part">
                <label for="slide-img" class="img-slide">
                    <img class="img-2" src="#" />
                </label>
                <div class="content content_1">
                    <div class="title">Quick Pen</div>
                    <div class="text">
                        uma empresa que visa o meio-ambiente e a produção de penas biodegradáveis, usadas como canetas.
                    </div>
                    <asp:Button ID="btnMais2" runat="server" Text="Saiba Mais" />
                </div>
            </div>

             <div class="inner_part">
                <label for="slide-img" class="img-slide">
                    <img class="img-3" src="#" />
                </label>
                <div class="content content_1">
                    <div class="title">Quick Pen</div>
                    <div class="text">
                        uma empresa que visa o meio-ambiente e a produção de penas biodegradáveis, usadas como canetas.
                    </div>
                    <asp:Button ID="btnMais3" runat="server" Text="Saiba Mais" />
                </div>
            </div>
        </div>
    </section>
    </form>
</body>
</html>