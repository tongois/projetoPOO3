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
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"><img src="img/marca.png" class="marca"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="#">Inicio <span class="sr-only">(atual)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Constante</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Americana</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Tabela Price</a>
        </li>

      </ul>
    </div>
  </nav>


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
    <p>Estudante do curso de Análise de Sistemas na Fatec Praia Grande.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="#" role="button">inicio</a>
    </p>
    <div class="imagem">
      <img src="img/ailton.jpg">
    </div>
  </div>
</section>

<section>
 <div class="jumbotron caixal2">
  <div class="info">
    <h1 class="display-4">Ailton Souza</h1>
    <p class="lead">Responsável pela criação da pagina inicial, com informações da equipe</p>
    <hr class="my-4 linha">
    <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="#" role="button">inicio</a>
    </p>
  </div>
  <div class="imagem">
    <img src="dog2.jpg">
  </div>
</div>
</section>

<footer>
  <div class="rodape">
    <p class="direitos">© 2018, POO, Todos os Direitos Reservados.</p>
  </div>
</footer>
    </body>
</html>
