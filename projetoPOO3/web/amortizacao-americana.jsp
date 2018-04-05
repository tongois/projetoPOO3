<%-- 
    Document   : amortizacao-americana
    Created on : 04/04/2018, 22:42:04
    Author     : Lucas Monteiro
--%>

<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAA - Sistema de Amortização Ameriana</title>
        
        <!-- Bootstrap 4-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css"><!-- Fixa o rodapé -->
        <link href="scr/css/sticky-footer-navbar.css" rel="stylesheet">
    </head>
        <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <header>
            <div class="jumbotron apresentacao">
            <h1 class="display-4">SAA - Sistema de Amortização Americana</h1>
            <p class="lead">O Sistema de Amortização Americano é uma forma de pagamento de empréstimos que se caracteriza pelo pagamento apenas dos juros da dívida,deixando o valor da dívida constante, que pode ser paga em apenas um único pagamento.</p>
            </div>
        </header>
         <div align="center" class="jumbotron caixal1">
            <h2 class="display-4">Simulador</h2>
            <form>
                <p>Valor do empréstimo (R$)</p> 
                <p><input type="number" name="emprestimo" min="0" step="0.01" required/></p>
                <p>Taxa de juros (%)</p>
                <p><input type="number" name="juros" min="0" step="any" required/></p>
                <p>Período (meses)</p>
                <p><input type="number" name="tempo" min="0" step="1" required/></p>
                <p><input class="btncalc" type="submit" value="Calcular"/></p>
            </form>
        </div>
        
        <div id="tabela" align="center" class="jumbotron caixal1">
            <%
                try{
                     double emprestimo = Double.parseDouble(request.getParameter("emprestimo"));
                     double juros =  Double.parseDouble(request.getParameter("juros"));
                     int tempo = Integer.parseInt(request.getParameter("tempo"));
                     double jMensal = emprestimo * (juros/100);
                     double somaJuros = 0, somaTotal = 0, somaEmprestimo =0  ;
                     NumberFormat nf = NumberFormat.getCurrencyInstance();
                       
            %>
             <h2 class="display-4">Tabela SAA</h2>
             <table class="table table-striped">
                   <tr>
                    <th>Período</th><th>Prestação</th><th>Juros</th><th>Amortização</th><th>Saldo devedor</th>
                </tr>
                  <tr>
                    <td>0</td><td>-</td><td>-</td><td>-</td><td><%=nf.format(emprestimo)%></td>
                </tr>
                <%
                    for(int i = 0; i<=tempo ;i++){
                        somaJuros = somaJuros + jMensal;
                        somaEmprestimo = jMensal + emprestimo;
                        somaTotal = emprestimo + somaJuros;
                    
                        if (i == tempo){
                %>
                  <tr>
                      <td><%=i%></td><td><%=nf.format(somaEmprestimo)%></td><td><%=nf.format(jMensal)%></td><td><%=nf.format(emprestimo)%></td><td>-</td>
                </tr>
                <%}
                    else{
                %>
                  <tr>
                    <td><%=i%></td><td><%=nf.format(jMensal)%></td><td><%=nf.format(jMensal)%></td><td>-</td><td><%=nf.format(emprestimo)%></td>
                </tr>
                 
                 <%}}%>
                 <tr>
                    <td>Total</td><td><%=nf.format(somaTotal)%></td><td><%=nf.format(somaJuros)%></td><td><%=nf.format(emprestimo)%></td><td>-</td>
                </tr>
                  </table>
                 
                 <%  }catch(Exception ex){%>
            <p>Preencha os campos</p>
            <%}%>
                    </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
