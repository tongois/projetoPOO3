<%-- 
    Document   : tabela-price
    Created on : 03/04/2018, 21:02:44
    Author     : Fabio Pecora Lopes
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
<%@include file="WEB-INF/jspf/menu.jspf" %>
 <header>
   <div class="jumbotron apresentacao">
    <h1 class="display-4">Tabela Price</h1>
    <p class="lead">Também chamado de sistema francês de amortização, é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações de mesmo valor.</p>
  </div>
</header>

 <section>
  <div class="jumbotron caixal1">
    <h1 class="display-4">Simulador</h1>
    <p>Digite os dados abaixo.</p> 
    <form>
        <table>
            <tr>
                <td align='right'><label for="valor">Valor do emprestimo: </label></td><td><input type="number" id="valor" name="valor" required></td>
            </tr>
            <tr>
                <td align='right' for="taxa"><label for="taxa">Taxa De Juros: </label></td><td><input type="number" id="taxa" name="taxa" required></td>
            </tr>
            <tr>
                <td align='right'><label for="parcelas">Quantidade De Prestações: </label></td><td><input type="number" id="parcelas" name="parcelas" required></td>
            </tr>
            <td></td><td align='right'><input class="btn btn-success" type="submit" value="Submit"></td>
        </table>
    </form>
           <%try{%>
           <%double valor = Double.parseDouble(request.getParameter("valor"));%>
           <%double taxa = Double.parseDouble(request.getParameter("taxa"));%>
           <%double parcelas = Double.parseDouble(request.getParameter("parcelas"));%>
           <%double vp =((valor*(taxa/100))/(1-(1/(Math.pow((1 + (taxa/100)),parcelas))))); %>
           <%double sd=valor; %>
           <%double tj=(taxa/100)*sd; %>
           <%double am=vp-tj; %>
           <%double aux=am; %>
           <%int i=0; %>
           
            <table align="left" border="1">
                <tr><th>Periodo</th><th>Saldo Devedor</th><th>Parcela</th><th>Juros</th><th>Amortização</th></tr>
                <%for(i=0;i<=parcelas;i++){%>
                <% if(i==0){%>
                <tr>
                    <th><%= i%></th>
                    <td><%= valor%></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <%}%>
                
                <% if(i!=0){%>
                <tr>
                    <th><%= i%></th>
                    <td><%= sd = sd - am %></td>
                    <td><%= vp %></td>
                    <td><%= tj = (taxa/100)*sd%></td>
                    <td><%= am = aux*Math.pow((1+(taxa/100)),i-1)%></td>
                </tr>
                <%}%>
            <%}%>
        </table>
        <%for(i=i;i>0;i--){%>
        <br/>
        <%}%>
               <%} catch(Exception ex){%>
                   Entre com um numero valido
              <%}%>
  </div>
</section>

<%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
