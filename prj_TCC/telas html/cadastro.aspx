<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="prj_TCC.telas_html.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="cadastro.css" />
    <title>Ideias Vivas</title>
</head>
<body>
   <div class="container">
        <div class="form-image">
                <img src="img/5495722.jpg" />
        </div>
    <div class="form">
         <form id="form1" runat="server">
           <div class="form-header">
                            <div class="title">
                                <h1>Cadsastre-se!</h1>
                            </div>
                            <div class="login-button">
                                <a href="#"/>
                            </div>
           </div>
                <div class="input-group">
                        
                        <div class="input-box">
                            <asp:Label ID="lblNome" runat="server" Text="Nome" ></asp:Label>
                            <asp:TextBox ID="txtNomee" runat="server" placeholder="Digite seu nome completo"></asp:TextBox>
                        </div>

                        <div class="input-box">
                            <asp:Label ID="lblEmail" runat="server" Text="Email" ></asp:Label>
                            <asp:TextBox ID="txtEmaill" runat="server" placeholder="DIgite seu Email"></asp:TextBox>
                        </div>
                      
                        <div class="input-box">
                            <label for="cpf-cnpj">Selecione</label>
                            <asp:DropDownList ID="ddlCPFouCNPJ" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCPFouCNPJ_SelectedIndexChanged">
                                <asp:ListItem>CPF</asp:ListItem>
                                <asp:ListItem>CNPJ</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="lblResult" runat="server" Text=" "></asp:Label>
                            <asp:TextBox ID="txtDado" runat="server"></asp:TextBox>
                        </div>

                        <div class="input-box">
                            <asp:Label ID="LblSenhaa" runat="server" Text="Senha" ></asp:Label>
                            <asp:TextBox ID="TxtSenhaa" runat="server" placeholder="DIgite sua senha"></asp:TextBox>
                        </div>

                        <div class="input-box">
                            <asp:Label ID="LblConfirma" runat="server" Text="Confirme sua Senha" ></asp:Label>
                            <asp:TextBox ID="TxtConfirma" runat="server" placeholder="Digite sua senha novamente" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

            <div class="btn-continua">
                <a href="#">Continuar</a>
            </div>
            </form>
        </div>
    </div>
    
</body>
</html>


