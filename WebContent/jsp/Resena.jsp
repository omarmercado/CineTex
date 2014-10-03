<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html prefix="og: http://ogp.me/ns#">
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/png" href="/theme/images/icon.png" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${Resena.getTitulo()} - CineTex.NET</title>
<meta content="${Resena.getContent()}" name="description">
<meta content="es"  name="locale">

<meta content="CineTex" property="og:site_name">
<meta value="@CineTexNET" name="twitter:site">
<meta content="http://www.Cinetex.net/" property="og:url">
<meta content="${Resena.getTitulo()}" property="og:title">
<meta content="${Resena.getOgContent()}" property="og:description">
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

<h2>Resena</h2>
<form name="frmResena" action="ResenaEdit.htm" method="post">
<input type="hidden" name="id" id="id" value="${Resena.getId()}"/>
<table width="100%">
  <tr>
  
          <td width="100%" height="30px" style="border: 1px solid #eee;background : #F7FAFB;">  
            <table width="100%">
            <tr>
                <th align="left">    
                  <c:choose>
                    <c:when test="${sessionScope.usuario > 0}">         
                      <input type="text" name="txtTitulo" id="txtTitulo" 
                             style="outline:none;background-color: transparent;border:none" value="<c:out value="${Resena.getTitulo()}"/>"/> 
                    </c:when>
                    <c:when test="${empty sessionScope.usuario}">
                      <p style="font-size: 150%" align="center"> ${Resena.getTitulo()} </p> 
                
                    </c:when>
                  </c:choose>
                </th>
            </tr>
            </table>
            
            <table width="100%">
            <tr>
              <td valign="top" width="60%">                  
                <c:choose>
                  <c:when test="${sessionScope.usuario > 0}">     
                    <textarea name="txtTexto" id="txtTexto" style="outline:none;background-color: transparent;border:none" cols="60" rows="30">
                      ${Resena.getTexto()} 
                    </textarea> 
                  </c:when>
                  <c:when test="${empty sessionScope.usuario}">     
                    <p style="font-size: 130%"> ${Resena.getTexto()}</p>
                  </c:when>
                </c:choose>    
              </td>                           
              <td width="40%" valign="top">
                <img height="100%"  width="100%" src="${Pagina.getImgPATH()}/<c:out value="${Resena.getUrl()}"/>.jpg">                
              </td>
            </tr>
            
              <c:if test="${sessionScope.usuario > 0}">
                <input type="text" name="txtUrl" id="txtUrl" value="${Resena.getUrl()}"/>
               Content : <input type="text" name="txtContent" id="txtUrl" value="${Resena.getContent()}"/>
               OG Content : <input type="text" name="txtOgContent" id="txtUrl" value="${Resena.getOgContent()}"/>
                
                <input type="submit" value="Editar"/>
              </c:if>
              
              
            <tr bgcolor="white">
              <td>Aurtor : ${Resena.getAutor()}</td>
              <td></td>
            </tr>
            </table>
          </td>
  </tr>
</table>
</form>     

<form name="frmResenaEliminar" method="post" action="ResenaEliminar.htm">
<input type="hidden"  value="${Resena.getId()}">
<c:if test="${sessionScope.usuario > 0}">     
<input type="submit" id="id" name="id" value="Eliminar">
</c:if>
</form>

</div>

<div id="footer" ><p><a href="Portada.htm">homepage</a> | <a href="mailto:CineTex@outlook.com">contact</a> | | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> |  Licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0  License</a></p></div>

</div>
</body>
</html>