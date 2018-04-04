<%-- 
    Document   : home
    Created on : 02/04/2018, 20:50:25
    Author     : Ton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">

    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>

  <header>
   <div class="jumbotron apresentacao">
    <h1 class="display-4">Cálculo de Amortização</h1>
    <p class="lead">Esse site tem como objetivo executar cálculos de amortização e reune os tipos de amortização constante, amortização americana e cálculo em tabela price  </p>
  </div>
</header>

<section>
  <div class="jumbotron caixal1">
    <h1 class="display-4">Ailton Souza</h1>
    <p class="lead">Responsável pela criação da pagina inicial, com informações da equipe</p>
    <hr class="my-4 linha">
    <p>Estudante do curso de Análise e Desenvolvimento de Sistemas na Fatec Praia Grande.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="home.jsp" role="button">Inicio</a>
    </p>
    <div class="imagem">
      <img src="img/ailton.jpg">
    </div>
  </div>
</section>

<section>
 <div class="jumbotron caixal2">
  <div class="info">
    <h1 class="display-4">Carlos Ferreira</h1>
    <p class="lead">Responsável pela criação da página de  Amortização Constante</p>
    <hr class="my-4 linha">
    <p>Estudante do curso de Análise e Desenvolvimento de Sistemas na Fatec Praia Grande.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="#" role="button">Constante</a>
    </p>
  </div>
  <div class="imagem">
    <img src="img/carlos.jpeg">
  </div>
</div>
</section>
        
<section>
  <div class="jumbotron caixal1">
    <h1 class="display-4">Fábio Pecora</h1>
    <p class="lead">Responsável pela criação da página da Tabela Price</p>
    <hr class="my-4 linha">
    <p>Estudante do curso de Análise e Desenvolvimento de Sistemas na Fatec Praia Grande.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="#" role="button">Tabela Price</a>
    </p>
    <div class="imagem">
      <img src="img/fabio.jpeg">
    </div>
  </div>
</section>
        
<section>
 <div class="jumbotron caixal2">
  <div class="info">
    <h1 class="display-4">Lucas Santana</h1>
    <p class="lead">Responsável pela criação da pagina de Amortização Americana</p>
    <hr class="my-4 linha">
    <p>Estudante do curso de Análise e Desenvolvimento de Sistemas na Fatec Praia Grande.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="#" role="button">Americana</a>
    </p>
  </div>
  <div class="imagem">
    <img src="img/dog2.jpg">
  </div>
</div>
</section>
        

<%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
