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
        
        <h1>INFORMACION DE PAGO</h1><br>
        
        <form action="libros" method="post">  
        
            <input type="hidden" name="action" value="pagar">
            <input type="hidden" name="codigo" value="">   
             <label class="pad_top">Nombre y Apellido:</label>        
        <input type="text" name="user" required><br>        
        
        <label class="pad_top">Numero de Tarjeta:</label>        
        <input type="password" name="numtarj" required><br> 
        
         <label class="pad_top">Fecha exp.:</label>        
        <input type="password" name="fexp" required><br>
        
         <label class="pad_top">Codigo de seguridad:</label>        
        <input type="password" name="cod" required><br>
        
        <label>&nbsp;</label>        
        <input type="submit" value="REALIZAR COMPRA!" class="margin_left">   
         </form>
            
        </form>
    </body>
</html>
