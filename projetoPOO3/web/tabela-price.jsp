<%-- 
    Document   : tabela-price
    Created on : 03/04/2018, 21:02:44
    Author     : Fabio Pecora Lopes
--%>

<%@page import="java.text.NumberFormat"%>
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
    <!-- Cabeçalho da pagina -->
 <header>
   <div class="jumbotron apresentacao">
    <h1 class="display-4">Tabela Price</h1>
    <p class="lead">Também chamado de sistema francês de amortização, é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações de mesmo valor.</p>
  </div>
</header>
    <!-- Formulario -->
  <div class="jumbotron caixal1">
    <h1 class="display-4">Simulador</h1>
    <p>Digite os dados abaixo.</p> 
    <form>
        <table>
            <tr>
                <td align='right'><label for="valor">Valor do emprestimo (R$): </label></td><td><input type="number" min="0" id="valor" name="valor" required></td>
            </tr>
            <tr>
                <td align='right' for="taxa"><label for="taxa">Taxa De Juros (%): </label></td><td><input type="number" min="0" id="taxa" name="taxa" required></td>
            </tr>
            <tr>
                <td align='right'><label for="parcelas">Quantidade De Prestações (Meses): </label></td><td><input type="number" min="0" id="parcelas" name="parcelas" required></td>
            </tr>
            <td></td><td align='right'><input class="btn btn-success" type="submit" value="Submit"></td>
        </table>
    </form>
  </div>
    <!-- Calculos -->
 <div id="tabela" align="center" class="jumbotron caixal1">
           <%try{%>
           <%double valor = Double.parseDouble(request.getParameter("valor"));
           double taxa = Double.parseDouble(request.getParameter("taxa"));
           double parcelas = Double.parseDouble(request.getParameter("parcelas"));
           double vp =((valor*(taxa/100))/(1-(1/(Math.pow((1 + (taxa/100)),parcelas))))); 
           double sd=valor; 
           double tj=(taxa/100)*sd; 
           double am=vp-tj; 
           double aux=am; 
           double somatj=0,somaam=0,somavp=0;
           NumberFormat nf = NumberFormat.getCurrencyInstance(); 
           int i=0; %>
               <h2 class="display-4">Tabela Price</h2>
            <table  class="table table-striped">
                <tr><th>Periodo</th><th>Prestação</th><th>Juros</th><th>Amortização</th><th>Saldo Devedor</th></tr>
                <%for(i=0;i<=parcelas;i++){%>

                <% if(i==0){%>
                <tr>
                    <th><%= i%></th>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td><%=nf.format(sd=valor)%></td>
                </tr>
                <%}%>
                <% if(i!=0){%>
                <tr>
                    <th><%=i%></th>
                    <td><%=nf.format(vp) %></td>
                    <td><%=nf.format(tj = (taxa/100)*sd)  %></td>
                    <td><%=nf.format(am = aux*Math.pow((1+(taxa/100)),i-1))%></td>
                    <td><%=nf.format(sd = sd - am)%></td>
                </tr>
                <!-- Soma Total -->
                <%
                somavp+=vp;
                somaam+=am;
                somatj+=tj;
                %>
                <%}%>
            <%}%>
            <tr>
                 <th>Total</th><th><%=nf.format(somavp)%></th><th><%=nf.format(somatj)%></th><th><%=nf.format(somaam)%></th><th>-</th>
            </tr>
        </table>
           

               <%} catch(Exception ex){%>
                   <p>Preencha os campos</p>
              <%}%>
</div>

<%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
