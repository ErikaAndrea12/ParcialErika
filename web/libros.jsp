<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Plataforma Web - Examen Parcial</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        
        <h1>TIENDA DE LIBROS</h1><br>
        
        <table>
            <tr>
              <th>Codigo</th>
              <th>Titulo</th>
              <th>Autor</th>
              <th>Genero</th>
              <th>Precio</th>
              <th></th>
            </tr>
            
            <c:forEach var="item" items="libro.txt">

           
              <tr>
                <td>0553380168</td>                
                <td>A Brief History of Time</td>
                <td>Stephen Hawking</td>
                <td>Ciencia</td>
                <td>19.84</td>
                 <td id='comprar'>
                  <form action="libros" method="post">
                    <input type="hidden" name="action" value="comprar">                    
                    <input type="hidden" name="codigo" value="">                    
                    <input type="submit" value="¡COMPRAR!">
                    
                  </form>
               
                <tr>
                <td>0062387243</td>                
                <td>Divergent</td>
                <td>Veronica Roth</td>
                <td>Sci-Fi</td>
                <td>16.13</td>
                 <td id='comprar'>
                  <form action="libros" method="post">
                    <input type="hidden" name="action" value="comprar">                    
                    <input type="hidden" name="codigo" value="">                    
                    <input type="submit" value="¡COMPRAR!">
                    
                  </form>
                 <tr>
                <td>1501127624</td>                
                <td>Steve Jobs</td>
                <td>Walter Isaacson</td>
                <td>Biografia</td>
                <td>21.26</td>
                
                <td id='comprar'>
                  <form action="libros" method="post">
                    <input type="hidden" name="action" value="comprar">                    
                    <input type="hidden" name="codigo" value="">                    
                    <input type="submit" value="¡COMPRAR!">
                    
                  </form>
                    <tr>
                <td>0553418025</td>                
                <td>The Martian</td>
                <td>Andy Weir</td>
                <td>Sci-Fi</td>
                <td>14.88</td>
                <td id='comprar'>
                  <form action="libros" method="post">
                    <input type="hidden" name="action" value="comprar">                    
                    <input type="hidden" name="codigo" value="">                    
                    <input type="submit" value="¡COMPRAR!">
                    
                  </form>
                
              </tr>
            </c:forEach>
          </table>
    </body>
</html>
