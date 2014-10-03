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
<link href="mobile/theme/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div align="left" style="width: 10%">
<img  width="100%" src="theme/images/cinema.jpg" align="left" />
</div>


<h1><span style="color:black; font-size:200%;">CineTex.net</span></h1>

<div id="container">

<div id="topnav">

		<ul>
		<li><font size="100%"><a href="Portada.htm">Portada</a></font></li>
		<li><font size="100%"><a href="Archivo.htm">Archivo</a></font></li>
		<li><font size="100%"><a href="jsp/mobile/SitiosRecomendados.jsp">Recomendados</a></font></li>		
		</ul>

</div>
		
<table width="100%">
  <tr>
    <td align="right">
       <p>Siguenos en <font style="font-size: 200%">Twitter :</font> <a href="https://twitter.com/CineTexNet" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @CineTexNet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
</p>
</td>
</tr>
</table>
		
<div id="content">

<table  width="100%" cellspacing="50">
<tr>
<td align="center" width="100%">
<font style="font-size:  300%"><label>Historial de Reseñas</label></font>
</td>
</tr>
</table>


<table width="100%" >
<tr>

<td width="3%">

<!-- 
<table width="100%">
  <tr>
    <td align="left">
      <font size="15%" >
        <a href="ArchivoTodas.htm">Todas</a>
      </font>
    </td> 
  </tr>
</table>
 
   <form name="frmPorMes" action="ArchivoPorFecha.htm" method="post">
      <table width="100%">
        <tr><th><font size="5%">Buscar Por Mes</font> </th></tr>
        <tr>
          <td align="left">
            <select>
              <option id="mes" name="mes" value="01">Enero</option>
              <option id="mes" name="mes" value="02">Febrero</option>
              <option id="mes" name="mes" value="03">Marzo</option>
              <option id="mes" name="mes" value="04">Abril</option>
              <option id="mes" name="mes" value="08">Agosto</option>
            </select>
          </td>    
          <td align="left">     
            <input type="submit" value="buscar"/>
          </td>
       </tr>
      </table>
  </form>
-->  
  
</td>
<td>
      <table>             
          <tr>
            <td align="left">
            <ul>
              <c:forEach var="Resena" items="${ListaResultado}">  
                <li style="">
                  <font style="font-size: 170%">
                    <a href="Resena.htm?id=<c:out value="${Resena.getId()}" />"  style="color : #484500;text-decoration : none;">
                      ${Resena.getTitulo()}
                    </a>
                  </font>
                  <br>
                  <br>
                  <br>
                </li>
              </c:forEach>  
            </ul>
            </td>
          </tr>          
      </table>

</td>
</tr>
</table>


</div>
</div>

</body>
</html>