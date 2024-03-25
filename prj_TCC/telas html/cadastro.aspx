<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="prj_TCC.telas_html.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="cadastro.css" />
    <title>Ideias Vivas</title>
</head>
<body>
   <div class="box">
       <div class="img-box">
           <img src="img/form-img.png" alt=" " />
       </div>
       <div class="form-box">
           <h2>Criar conta</h2>
           <p>Já é um membro? <a href="log.aspx">Login</a></p>
           <form id="form1" runat="server">
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
                   <asp:TextBox ID="txtCPF" runat="server" CssClass="text" placeholder="Insira seu CPF"></asp:TextBox>
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
                   <asp:Button ID="btnCadastro" cssclass="button" runat="server" Text="Cadastrar" OnClick="btnCadastro_Click" />
                   <asp:Label ID="lblObs" runat="server" Text="" CssClass="label-obs"></asp:Label>
               </div>

           </form>
       </div>
   </div>
</body>
</html>


