<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CineTex.com</title>
<link href="mobile/theme/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div align="left" style="width: 10%">
<img  width="100%" src="theme/images/cinema.jpg" align="left" />
</div>


<h1><span style="color:black; font-size:400%;">CineTex.com</span></h1>


<div id="container">

<div id="topnav">
		<ul>
		<li><font size="100%"><a href="Portada.htm">Portada</a></font></li>
		<li><font size="100%"><a href="Archivo.htm">Archivo</a></font></li>
		<li><font size="100%"><a href="jsp/mobile/SitiosRecomendados.jsp">Sitios Recomendados</a></font></li>			
		</ul>
</div>
	
	<table width="100%">
  <tr>
    <td align="right">
       <p>Siguenos en Twitter : <a href="https://twitter.com/CineTexNet" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @CineTexNet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
</p>
</td>
</tr>
</table>

<div id="content">

<table width="100%">
  <tr>
    <td align="left">
      <h1>Ultimas Reseñas</h1>
    </td>
    <td align="right">
      <h1>Ultima Actualizacion : ${Pagina.getUltimaActualizacion()}</h1>
    </td>
  </tr>
</table>

<c:forEach var="Articulo" items="${ListaResenas}">
<br>
<br>
<table width="100%" align="center">
  <tr>
    <td align="center" valign="bottom">
      <font style="font-size: 200%;">
        <a style="text-decoration: none"  href="Resena.htm?id=${Articulo.getId()}">${Articulo.getTitulo()}</a>
      </font>
    </td>
  </tr>
</table>
<br>
<table width="100%">
  <tr>
    <td width="100%" height="30%" style="border: 1px solid #eee;background : #F7FAFB ;">  
      <table width="100%" height="100%">
        <tr>
          <td width="50%" align="left">
            <img height="100%"  width="100%" src="/jsp/img/<c:out value="${Articulo.getUrl()}"/>.jpg">
          </td>
        
        
          <td width="50%" align="left" valign="top">
            <p style="font-size: 200%;"> ${fn:substring(Articulo.getTexto(), 0, 350)}...  </p> 
          </td>
        </tr>
        
        
        <tr bgcolor="white">
          <td> <Font style="font-size: 100%">Aurtor : ${Articulo.getAutor()}</Font> </td>
          <td><Font style="font-size: 200%">  <a href="Resena.htm?id=<c:out value="${Articulo.getId()}"/>">ir a articulo </a></Font></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<hr>
</c:forEach>          

</div>

<div id="footer"><p><a href="#">homepage</a> | <a href="mailto:denise@mitchinson.net">contact</a> | &copy; 2008 Anyone | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> |  Licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0  License</a></p></div>

</div>
</body>
</html>