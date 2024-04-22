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
                 <div class="labels-banco">
                     <asp:Label ID="lblObs" runat="server" Text=""></asp:Label>
                     <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                     <asp:Label ID="lblSenha" runat="server" Text=""></asp:Label>
                 </div>
                 <div class="input-box">
                     <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="input"></asp:TextBox>
                 </div>
                 <div class="input-box">
                     <asp:TextBox ID="txtSenha" runat="server" placeholder="Senha" CssClass="input"></asp:TextBox>
                 </div>
                 <div class="remember-forgot">
                        <a href="#">Esqueceu a senha?</a>
                 </div>

                 <asp:Button type="submit" ID="btnLogin" CssClass="btn" runat="server" Text="Login" OnClick="btnlogin2_Click" />

                 <div class="register-link">
                     <p>Não tem uma conta? <a href="cadastro.aspx">Cadastre-se</a></p>
                 </div>
          
             </form>
        </div>
    
</body>
</html>
