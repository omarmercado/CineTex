<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html prefix="og: http://ogp.me/ns#">
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/png" href="/theme/images/icon.png" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CineTex.NET : Portada</title>
<meta content="CineTex.NET es un sitio dedicado a la resena (Reviews) de peliculas en espanol (sin importar en que fecha fueron estrenadas),
buscando dar un punto de vista personal acerca de los puntos buenos y malos de cada pelicula" name="description">
<meta content="es"  name="locale">
<meta content="CineTex" property="og:site_name">
<meta value="@CineTexNET" name="twitter:site">
<meta content="http://www.Cinetex.net/" property="og:url">
<meta content="CineTex.NET : Portada" property="og:title">
<meta content="CineTex.NET es un sitio dedicado a la resena (Reviews) de peliculas en espanol (sin importar en que fecha fueron estrenadas),
buscando dar un punto de vista personal acerca de los puntos buenos y malos de cada pelicula" property="og:description">
<meta property="og:locale" content="es" />

<link href="theme/style.css" rel="stylesheet" type="text/css" />
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
		<c:if test="${sessionScope.usuario > 0}">
          <li><a href="NuevoArticulo.htm">Nuevo Articulo</a></li>
        </c:if>
		</ul>
</div>
</div>

<table width="100%">
  <tr>
  <td align="left">
Correo : CineTex@outlook.com
</td>
    <td align="right">
       <p>Siguenos en Twitter : <a href="https://twitter.com/CineTexNet" class="twitter-follow-button" data-show-count="false">Follow @CineTexNet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
</p>
</td>
</tr>

</table>
	
<div id="content">

<table width="100%">
  <tr>
    <td align="left">
      <h1>Ultimas Rese�as</h1>
    </td>
    <td align="right">
      <h1>Ultima Actualizacion : ${Pagina.getUltimaActualizacion()}</h1>
    </td>
  </tr>
</table>



      <c:forEach var="Articulo" items="${ListaResenas}">

<table width="100%">
  <tr>
  
          <td width="100%" height="70%" style="border: 1px solid #eee;background : #F7FAFB;">  
            <table width="100%" >
            <tr>
                <th align="left"> 
           <font style="font-size: 200%;">
              <a href="Resena.htm?id=<c:out value="${Articulo.getId()}"/>">${Articulo.getTitulo()}</a>
            </font>

  </th>
            </tr>
              <tr>
              
              <td width="60%" valign="top">
              
              <p style="font-size: 150%"> ${fn:substring(Articulo.getTexto(), 0, 300)} ... 
                <Font style="font-size: 100%">  <a href="Resena.htm?id=<c:out value="${Articulo.getId()}"/>">ir a articulo </a></Font>
              </p>
               </td>
             
             <td width="40%">
              <img height="80%"  width="70%" src="${Pagina.getImgPATH()}/<c:out value="${Articulo.getUrl()}"/>.jpg">
            
              </td>
              </tr>
              
              <tr bgcolor="white">
                  <td>Aurtor : ${Articulo.getAutor()}</td>
                  <td><Font style="font-size: 100%">  <a href="Resena.htm?id=<c:out value="${Articulo.getId()}"/>">ir a articulo </a></Font></td>

              </tr>
              
              
              
            </table>
          </td>
  </tr>
</table>
</c:forEach>          

</div>

<div id="footer" ><p><a href="Portada.htm">homepage</a> | <a href="mailto:CineTex@outlook.com">contact</a> | | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> |  Licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0  License</a></p></div>

</div>
</body>
</html>