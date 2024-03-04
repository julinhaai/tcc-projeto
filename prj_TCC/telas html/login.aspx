﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="prj_TCC.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <link rel="stylesheet" href="login.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <div class="input-group">
                   <asp:Label ID="lblNome" runat="server"  CssClass="label" Text="Nome Completo"></asp:Label>
                   <asp:TextBox ID="txtNome" runat="server"  CssClass="text" placeholder="Digite o seu nome completo"></asp:TextBox>
               </div>

               <div class="input-group">
                   <asp:Label ID="lblEmail" runat="server" CssClass="label" Text="Email"></asp:Label>
                   <asp:TextBox ID="txtEmail" runat="server" CssClass="text" placeholder="Digite o seu Email"></asp:TextBox>
               </div>

               <div class="input-group">
                   <asp:Label ID="lblCPF" runat="server" CssClass="label" Text="CPF:"></asp:Label>
                   <%--<asp:DropDownList ID="ddlCPFouCNPJ" runat="server" OnSelectedIndexChanged="ddlCPFouCNPJ_SelectedIndexChanged">
                       <asp:ListItem>CPF</asp:ListItem>
                       <asp:ListItem>CNPJ</asp:ListItem>
                   </asp:DropDownList>--%>
                   <asp:TextBox ID="txtCPFouCNPJ" runat="server" CssClass="text" placeholder=""></asp:TextBox>
               </div>

               <div class="input-group w50">
                   <asp:Label ID="lblSenha" runat="server" CssClass="label" Text="Digite sua senha"></asp:Label>
                   <asp:TextBox ID="txtSenha" TextMode="Password" CssClass="text" runat="server" placeholder="Digite sua senha"></asp:TextBox>
               </div>

               <div class="input-group w50">
                   <asp:Label ID="lblConfirma" runat="server" CssClass="label" Text="Confirmar senha"></asp:Label>
                   <asp:TextBox ID="txtConfirma" TextMode="Password" CssClass="text" runat="server" placeholder="Confirme sua senha"></asp:TextBox>
               </div>

               <div class="input-group">
                   <asp:Button ID="btnlogin2" cssclass="button" runat="server" Text="Login" OnClick="btnlogin_Click" />
                   <asp:Label ID="lblObs" runat="server" Text=""></asp:Label>
               </div>
        
        </div>
    </form>
</body>
</html>
