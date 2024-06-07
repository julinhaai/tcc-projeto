<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="prj_TCC.telas_html.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="cadastro.css" />
    <style>
        .hidden { display: none; }
    </style>
    <title>Ideias Vivas</title>
</head>
<body>
   <div class="box">
       <div class="img-box">
           <img src="img/form-img.png" alt=" " />
       </div>
       </div>
     <form id="form1" runat="server"> 
       <div class="form-box">
           <h2>Criar conta</h2>
           <p>Já é um membro? <a href="login-ofc.aspx">Login</a></p>
          
                      <asp:DropDownList ID="ddlitens" runat="server" OnSelectedIndexChanged="ddlitens_SelectedIndexChanged" AutoPostBack="True">
                          <asp:ListItem Value="0">---Selecione---</asp:ListItem>
           <asp:ListItem Value="1">Aluno</asp:ListItem>
           <asp:ListItem Value="2">Usuário</asp:ListItem>
       </asp:DropDownList>

       <div id="divAluno" runat="server" visible="false">
        <!-- Campos para Aluno -->
        <asp:Label ID="lblNomeAluno" runat="server" CssClass="label" Text="Nome Completo"></asp:Label>
        <asp:TextBox ID="txtNomeAluno" runat="server" CssClass="text" placeholder="Digite o seu nome completo" OnTextChanged="ddlitens_SelectedIndexChanged"></asp:TextBox>
        
        <asp:Label ID="lblEmailAluno" runat="server" CssClass="label" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmailAluno" runat="server" CssClass="text" placeholder="Digite o seu Email" OnTextChanged="ddlitens_SelectedIndexChanged"></asp:TextBox>
        
        <asp:Label ID="lblRM" runat="server" CssClass="label" Text="RM:"></asp:Label>
        <asp:TextBox ID="txtRM" runat="server" CssClass="text" placeholder="Insira seu RM" OnTextChanged="ddlitens_SelectedIndexChanged"></asp:TextBox>
        
        <asp:Label ID="lblSenhaAluno" runat="server" CssClass="label" Text="Digite sua senha"></asp:Label>
        <asp:TextBox ID="txtSenhaAluno" TextMode="Password" CssClass="text" runat="server" placeholder="Digite sua senha" OnTextChanged="ddlitens_SelectedIndexChanged"></asp:TextBox>
        
        <asp:Label ID="lblConfirmaAluno" runat="server" CssClass="label" Text="Confirmar senha"></asp:Label>
        <asp:TextBox ID="txtConfirmaAluno" TextMode="Password" CssClass="text" runat="server" placeholder="Confirme sua senha" OnTextChanged="ddlitens_SelectedIndexChanged"></asp:TextBox>
        
        <asp:Button ID="btnCadastroAluno" CssClass="button" runat="server" Text="Cadastrar" OnClick="btnCadastroAluno_Click" />
        <asp:Label ID="lblObsAluno" runat="server" CssClass="label-obs" OnDataBinding="ddlitens_SelectedIndexChanged"></asp:Label>
    </div>

    <div id="divUsuario" runat="server" visible="false">
        <!-- Campos para Usuário -->
        <asp:Label ID="lblNomeUsuario" runat="server" CssClass="label" Text="Nome Completo"></asp:Label>
        <asp:TextBox ID="txtNomeUsuario" runat="server" CssClass="text" placeholder="Digite o seu nome completo" OnTextChanged="ddlitens_SelectedIndexChanged"></asp:TextBox>
        
        <asp:Label ID="lblEmailUsuario" runat="server" CssClass="label" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmailUsuario" runat="server" CssClass="text" placeholder="Digite o seu Email" OnTextChanged="ddlitens_SelectedIndexChanged"></asp:TextBox>
        
        <asp:Label ID="lblCPFUsuario" runat="server" CssClass="label" Text="CPF:"></asp:Label>
        <asp:TextBox ID="txtCPFUsuario" runat="server" CssClass="text" placeholder="Insira seu CPF" OnTextChanged="ddlitens_SelectedIndexChanged"></asp:TextBox>
        
        <asp:Label ID="lblSenhaUsuario" runat="server" CssClass="label" Text="Digite sua senha"></asp:Label>
        <asp:TextBox ID="txtSenhaUsuario" TextMode="Password" CssClass="text" runat="server" placeholder="Digite sua senha" OnTextChanged="ddlitens_SelectedIndexChanged"></asp:TextBox>
        
        <asp:Label ID="lblConfirmaUsuario" runat="server" CssClass="label" Text="Confirmar senha"></asp:Label>
        <asp:TextBox ID="txtConfirmaUsuario" TextMode="Password" CssClass="text" runat="server" placeholder="Confirme sua senha" OnTextChanged="ddlitens_SelectedIndexChanged"></asp:TextBox>
        
        <asp:Button ID="btnCadastroUsuario" CssClass="button" runat="server" Text="Cadastrar" OnClick="btnCadastroUsuario_Click" />
        <asp:Label ID="lblObsUsuario" runat="server" CssClass="label-obs" OnDataBinding="ddlitens_SelectedIndexChanged"></asp:Label>
    </div>
</div>
           </form>
               
</body>
</html>


