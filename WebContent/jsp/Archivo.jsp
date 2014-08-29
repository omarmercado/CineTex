<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CineTex.com</title>
<link href="theme/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="container">
<div id="top"><h1><span style="color:#259FDA; font-size:14pt;">CineTex.com</span></h1></div>

<div id="navcontainer">
<div id="topnav">
		<ul>
		<li><a href="Portada.htm" title="">Portada</a></li>
		<li><a href="Archivo.htm" title="">Archivo</a></li>
		</ul>
</div>
</div>
	
<div id="content">

<h2>Archivo</h2>

<table>
  <tr>
    <td><a href="ArchivoTodas.htm">Ver Todas</a></td>
  </tr>
</table>

<table width="70%"> 
  <tr>
    <td width="20%" align="left">
      <table>
        <tr><th> Buscar Por Mes</th></tr>
        <tr><td><a href="ArchivoPorFecha.htm?mes=01"> Enero </a></td></tr>
        <tr><td><a href="ArchivoPorFecha.htm?mes=02"> Febrero </a></td></tr>
        <tr><td><a href="ArchivoPorFecha.htm?mes=03"> Marzo </a></td></tr>
        <tr><td><a href="ArchivoPorFecha.htm?mes=04"> Abril </a></td></tr>
        <tr><td><a href="ArchivoPorFecha.htm?mes=08"> Agosto </a></td></tr>
      </table>
    </td>

    <td width="80%" align="center" valign="top">      
      <table> 
        <tr><th> Titulo</th></tr>
        <c:forEach var="Resena" items="${ListaResultado}">
          <tr><td>
            <a href="Resena.htm?id=<c:out value="${Resena.getId()}" />" target="_blank" > ${Resena.getTitulo()} </a>
          </td></tr>
        </c:forEach>  
      </table>
    </td> 
  </tr>
</table>

</div>

<div id="footer" ><p><a href="#">homepage</a> | <a href="mailto:denise@mitchinson.net">contact</a> | &copy; 2008 Anyone | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> |  Licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0  License</a></p></div>

</div>
</body>
</html>