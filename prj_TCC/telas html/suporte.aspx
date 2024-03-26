﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="suporte.aspx.cs" Inherits="prj_TCC.telas_html.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ideias Vivas </title>
    <link rel="stylesheet" href="suporte.css" />
    <link
        rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"

   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            

             <nav class="navbar">

            <a href="inicio.aspx" style="--i:0;">Início</a>
            <a href="projetos.aspx" style="--i:1;">Projetos</a>
            <a href="suporte.aspx"style="--i:2;">Suporte</a>
            <a href="suporte.aspx"style="--i:2;">Planos</a>
            <a href="sobre.aspx" style="--i:3;"></a>
            <asp:Button ID="btncadastro" runat="server" Text="Cadastre-se" OnClick="btncadastro_Click" />

        </nav>

            <div class="wrapper">
                <p> Tire suas dúvidas e contate-nos! </p>
                <h1> Perguntas frequentes </h1>

                

             
                <div class="accordion">

                    <div>
                        <input type="checkbox" name="pergunta_accordian" value="pergunta1" class="accordion__input" />
                        <label for="pergunta1" class="accordion_label">Como saber se minha escola está no Ideias Vivas? </label>
                        
                          <div class="accordion__content">
                             <p>
                                 O Ideias Vivas é um site de divulgação de projetos e trabalhos voltados para a área de tecnologia. Ele foi desenvolvido para aumentar a visibilidade e as oportunidades geradas para os alunos após o término de seus trabalhos. 
                             </p>
                         </div>
                    </div>
                    <div>
                        <input type="checkbox" name="pergunta_accordion" value="pergunta2" class="accordion__input" />
                        <label for="pergunta2" class="accordion_label">  Como cadastrar o meu projeto? </label>
                         <div class="accordion__content">
                             <p>
                                 O Ideias Vivas é um site de divulgação de projetos e trabalhos voltados para a área de tecnologia. Ele foi desenvolvido para aumentar a visibilidade e as oportunidades geradas para os alunos após o término de seus trabalhos. 
                             </p>
                         </div> 
                    </div>
                    <div>
                        <input type="checkbox" name="pergunta_accordion" value="pergunta3" class="accordion__input" />
                        <label for="pergunta3" class="accordion_label">  Como entrar em contato com as equipes? </label>
                          <div class="accordion__content">
                             <p>
                                 O Ideias Vivas é um site de divulgação de projetos e trabalhos voltados para a área de tecnologia. Ele foi desenvolvido para aumentar a visibilidade e as oportunidades geradas para os alunos após o término de seus trabalhos. 
                             </p>
                         </div>
                    </div>
                     <div>
                        <input type="checkbox" name="pergunta_accordion" value="pergunta4" class="accordion__input" />
                        <label for="pergunta4" class="accordion_label">     Como funciona o cadastro de escola? </label>

                         <div class="accordion__content">
                             <p>
                                 O Ideias Vivas é um site de divulgação de projetos e trabalhos voltados para a área de tecnologia. Ele foi desenvolvido para aumentar a visibilidade e as oportunidades geradas para os alunos após o término de seus trabalhos. 
                             </p>
                         </div>

                        
                    </div>
                    
                </div>
                
    </form>
</body>
</html>
