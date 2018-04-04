<%-- 
    Document   : amortizacao-constante
    Created on : 04/04/2018, 15:32:29
    Author     : Outline
--%>

<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAC - Sistema de Amortização Constante</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <header>
            <div class="jumbotron apresentacao">
            <h1 class="display-4">SAC - Sistema de Amortização Constante</h1>
            <p class="lead">Sistema de Amortização Constante (SAC) é uma forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor total do empréstimo.</p>
            </div>
        </header>
        <div align="center" class="jumbotron caixal1">
            <h2 class="display-4">Simulador</h2>
            <form>
                <p>Valor do empréstimo (R$)</p> 
                <p><input type="number" name="valorEmprestimo" min="0" step="0.01" required/></p>
                <p>Taxa de juros (%)</p>
                <p><input type="number" name="taxa" min="0" step="any" required/></p>
                <p>Período (meses)</p>
                <p><input type="number" name="periodo" min="0" step="1" required/></p>
                <p><input type="submit" value="Calcular"/></p>
            </form>
        </div>
        
        <div id="tabela" align="center" class="jumbotron caixal1">
            <%
            try {
                double valor = Double.parseDouble(request.getParameter("valorEmprestimo"));
                double taxa = Double.parseDouble(request.getParameter("taxa"))/100;
                int periodo = Integer.parseInt(request.getParameter("periodo"));
                double amortizacao = valor/(double)periodo;
                double juros, prestacao, somaPrestacao, somaJuros;
                somaPrestacao=0;
                somaJuros=0;
                NumberFormat nf = NumberFormat.getCurrencyInstance();
            %>
            <h2 class="display-4">Tabela SAC</h2>
            <table class="table table-striped">
                <tr>
                    <th>Período</th><th>Prestação</th><th>Juros</th><th>Amortização</th><th>Saldo devedor</th>
                </tr>
                <tr>
                    <td>0</td><td>-</td><td>-</td><td>-</td><td><%=nf.format(valor)%></td>
                </tr>
                <%
                    for (int i=1; i<=periodo; i++){
                        juros = valor * taxa;
                        prestacao = amortizacao + juros;
                        valor-=amortizacao;
                        somaPrestacao+=prestacao;
                        somaJuros+=juros;
                %>
                <tr>
                    <td><%=i%></td><td><%=nf.format(prestacao)%></td><td><%=nf.format(juros)%></td><td><%=nf.format(amortizacao)%></td><td><%=nf.format(valor)%></td>
                </tr>
                <%}%>
                <tr>
                    <th>Total</th><th><%=nf.format(somaPrestacao)%></th><th><%=nf.format(somaJuros)%></th><th><%=nf.format(amortizacao*periodo)%></th><th>-</th>
                </tr>
            </table>
        
        <%  }catch(Exception ex){%>
            <p>Preencha os campos</p>
            <%}%>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
