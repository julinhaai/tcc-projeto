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
       </div>
       <div class="form-box">
           <h2>Criar conta</h2>
           <p>Já é um membro? <a href="login-ofc.aspx">Login</a></p>
           <form id="form1" runat="server">
               <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
               <div class="divAluno" runat="server">

               <div class="divAluno" runat="server">
                   <asp:Label ID="lblNomeAluno" runat="server"  CssClass="label" Text="Nome Completo"></asp:Label>
                   <asp:TextBox ID="txtNomeAluno" runat="server"  CssClass="text" placeholder="Digite o seu nome completo"></asp:TextBox>
               </div>

               <div class="divAluno" runat="server">
                   <asp:Label ID="lblEmailAluno" runat="server" CssClass="label" Text="Email"></asp:Label>
                   <asp:TextBox ID="txtEmailAluno" runat="server" CssClass="text" placeholder="Digite o seu Email"></asp:TextBox>
               </div>

               <div class="divAluno" runat="server">
                   <asp:Label ID="lblRM" runat="server" CssClass="label" Text="CPF:"></asp:Label>
                   <asp:TextBox ID="txtRM" runat="server" CssClass="text" placeholder="Insira seu CPF"></asp:TextBox>
               </div>

               <div class="divAluno" runat="server">
                   <asp:Label ID="lblSenhaAluno" runat="server" CssClass="label" Text="Digite sua senha"></asp:Label>
                   <asp:TextBox ID="txtSenhaAluno" TextMode="Password" CssClass="text" runat="server" placeholder="Digite sua senha"></asp:TextBox>
               </div>

               <div class="divAluno" runat="server">
                   <asp:Label ID="lblConfirmaAluno" runat="server" CssClass="label" Text="Confirmar senha"></asp:Label>
                   <asp:TextBox ID="txtConfirmaAluno" TextMode="Password" CssClass="text" runat="server" placeholder="Confirme sua senha"></asp:TextBox>
               </div>

               <div class="divAluno" runat="server">
                   <asp:Button ID="btnCadastroAluno" cssclass="button" runat="server" Text="Cadastrar" OnClick="btnCadastro_Click" />
                   <asp:Label ID="lblObsAluno" runat="server" Text="" CssClass="label-obs"></asp:Label>
               </div>
                   </div>

               <div class="divUsuário" runat="server">
                   <asp:Label ID="lblNomeUsuario" runat="server"  CssClass="label" Text="Nome Completo"></asp:Label>
                   <asp:TextBox ID="txtNomeUsuario" runat="server"  CssClass="text" placeholder="Digite o seu nome completo"></asp:TextBox>
               </div>

               <div class="divUsuário" runat="server">
                   <asp:Label ID="lblEmailUsuario" runat="server" CssClass="label" Text="Email"></asp:Label>
                   <asp:TextBox ID="txtEmailUsuario" runat="server" CssClass="text" placeholder="Digite o seu Email"></asp:TextBox>
               </div>

               <div class="divUsuário" runat="server">
                   <asp:Label ID="lblCPFUsuario" runat="server" CssClass="label" Text="CPF:"></asp:Label>
                   <asp:TextBox ID="txtCPFUsuario" runat="server" CssClass="text" placeholder="Insira seu CPF"></asp:TextBox>
               </div>

               <div class="divUsuário" runat="server">
                   <asp:Label ID="lblSenhaUsuario" runat="server" CssClass="label" Text="Digite sua senha"></asp:Label>
                   <asp:TextBox ID="txtSenhaUsuario" TextMode="Password" CssClass="text" runat="server" placeholder="Digite sua senha"></asp:TextBox>
               </div>

               <div class="divUsuário" runat="server">
                   <asp:Label ID="lblConfirmaUsuario" runat="server" CssClass="label" Text="Confirmar senha"></asp:Label>
                   <asp:TextBox ID="txtConfirmaUsuario" TextMode="Password" CssClass="text" runat="server" placeholder="Confirme sua senha"></asp:TextBox>
               </div>

               <div class="divUsuário" runat="server">
                   <asp:Button ID="btnCadastroUsuario" cssclass="button" runat="server" Text="Cadastrar" OnClick="btnCadastro_Click" />
                   <asp:Label ID="lblObsUsuario" runat="server" Text="" CssClass="label-obs"></asp:Label>
               </div>
           </form>
       </div>
</body>
</html>


