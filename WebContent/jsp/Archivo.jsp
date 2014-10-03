<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html prefix="og: http://ogp.me/ns#">
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/png" href="/theme/images/icon.png" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CineTex.NET : Archivo</title>
<meta content="CineTex.NET es un sitio dedicado a la resena (Reviews) de peliculas en espanol (sin importar en que fecha fueron estrenadas),
buscando dar un punto de vista personal acerca de los puntos buenos y malos de cada pelicula" name="description">
<meta content="es"  name="locale">
<meta content="CineTex" property="og:site_name">
<meta value="@CineTexNET" name="twitter:site">
<meta content="http://www.Cinetex.net/" property="og:url">
<meta content="CineTex.NET : Archivo" property="og:title">
<meta content="CineTex.NET es un sitio dedicado a la resena (Reviews) de peliculas en espanol (sin importar en que fecha fueron estrenadas),
buscando dar un punto de vista personal acerca de los puntos buenos y malos de cada pelicula" property="og:description">
<meta property="og:locale" content="es" />
<link href="/theme/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="container">
<div id="top"><h1><span>CineTex.net</span></h1></div>

<div id="navcontainer">
<div id="topnav">
		<ul>
		<li><a href="Portada.htm">Portada</a></li>
		<li><a href="Archivo.htm">Archivo</a></li>
		<li><a href="jsp/SitiosRecomendados.jsp">Sitios Recomendados</a></li>
		</ul>
</div>
</div>
	
<table width="100%">
  <tr>
    <td align="right">
       <p>Siguenos en Twitter : <a href="https://twitter.com/CineTexNet" class="twitter-follow-button" data-show-count="false">Follow @CineTexNet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
</p>
</td>
</tr>
</table>	
	
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
        <tr><td> 2014 </td></tr>
        <tr><td><a href="ArchivoPorFecha.htm?mes=09"> Septiembre </a></td></tr>
        <tr><td><a href="ArchivoPorFecha.htm?mes=10"> Octubre </a></td></tr>
        <tr><td><a href="ArchivoPorFecha.htm?mes=11"> Noviembre </a></td></tr>
        <tr><td><a href="ArchivoPorFecha.htm?mes=12"> Diciembre </a></td></tr>
      </table>
    </td>

    <td width="80%" align="center" valign="top">      
      <table> 
        <tr><th><FONT style="font-size: 150%"> Titulo </FONT></th></tr>
        <c:forEach var="Resena" items="${ListaResultado}">
          <tr><td>
            <FONT style="font-size: 130%">
              <a href="Resena.htm?id=<c:out value="${Resena.getId()}" />"  >* ${Resena.getTitulo()} </a>
            </FONT>
          </td></tr>
        </c:forEach>  
      </table>
    </td> 
  </tr>
</table>

</div>

<div id="footer" ><p><a href="Portada.htm">homepage</a> | <a href="mailto:CineTex@outlook.com">contact</a> | | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> |  Licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0  License</a></p></div>

</div>
</body>
</html>