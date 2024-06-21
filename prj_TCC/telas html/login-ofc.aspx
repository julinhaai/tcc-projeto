<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login-ofc.aspx.cs" Inherits="prj_TCC.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <link rel="stylesheet" href="login.css" />
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet' />
    <title>Login - Ideias Vivas</title>
</head>
<body>

        <div class="wrapper">
             <form id="form1" runat="server">
                 <h1>Login</h1>
                 <asp:DropDownList ID="ddllogin" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddllogin_SelectedIndexChanged">
                     <asp:ListItem Value="0">---Selecione---</asp:ListItem>
                     <asp:ListItem Value="1">Administrador</asp:ListItem>
                     <asp:ListItem Value="2">Aluno</asp:ListItem>
                     <asp:ListItem Value="3">Usuário</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                 <div class="labels-banco">
                     <asp:Label ID="lblObs" runat="server" Text=""></asp:Label>
                     <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                     <asp:Label ID="lblSenha" runat="server" Text=""></asp:Label>
                 </div>
                 <div id="divAdministrador" runat="server" visible="false">
                     <asp:TextBox ID="txtRMAdministrador" runat="server" placeholder="Digite seu RM" CssClass="input"></asp:TextBox>
                     <asp:TextBox ID="txtSenhaAdministrador" runat="server" placeholder="Digite sua senha" CssClass="input"></asp:TextBox>
                     <br />
                     <asp:Button ID="btnloginAdministrador" runat="server" Text="Login" OnClick="btnloginAdministrador_Click" />
                 </div>
                 
                  <div id="divAluno" runat="server" visible="false">
                     <asp:TextBox ID="txtRMAluno" runat="server" placeholder="Digite seu RM" CssClass="input"></asp:TextBox>
                     <asp:TextBox ID="txtSenhaAluno" runat="server" placeholder="Digite sua senha" CssClass="input"></asp:TextBox>
                      <br />
                      <asp:Button ID="btnloginAluno" runat="server" Text="Login" OnClick="btnloginAluno_Click" />
                  </div>
                  <div id="divUsuario" runat="server" visible="false">
                     <asp:TextBox ID="txtCPFUsuario" runat="server" placeholder="Digite seu CPF" CssClass="input"></asp:TextBox>
                     <asp:TextBox ID="txtSenhaUsuario" runat="server" placeholder="Digite sua senha" CssClass="input"></asp:TextBox>
                     <br />
                      <asp:Button ID="btnloginUsuario" runat="server" Text="Login" OnClick="btnloginUsuario_Click" />
                      </div>
                 <div class="remember-forgot">
                        <a href="#">Esqueceu a senha?</a>
                 </div>

<%--                 <asp:Button type="submit" ID="btnLogin" CssClass="btn" runat="server" Text="Login" />--%>

                 <div class="register-link">
                     <p>Não tem uma conta? <a href="cadastro.aspx">Cadastre-se</a></p>
                 </div>
          
             </form>
        </div>
    
</body>
</html>
