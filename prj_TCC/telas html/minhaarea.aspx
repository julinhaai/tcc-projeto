﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="minhaarea.aspx.cs" Inherits="prj_TCC.telas_html.minhaarea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="estilo.css" />
    <link rel="stylesheet" type="text/css" href="navbar.css" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/11.0.5/swiper-bundle.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
    <title>Minha Área</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNomeUsuario" runat="server" Text="Label"></asp:Label>
            <a href="minhaarea.aspx">Início</a>
            <a href="meusprojetos.aspx">Meus Projetos</a>
            <a href="integrantes.aspx"> Integrantes</a>
            <a href="analise.aspx"> Análise</a>
            <asp:Button ID="btnsair" runat="server" Text="Sair" OnClick="btnsair_Click" />

        </div>
    </form>
</body>
</html>
