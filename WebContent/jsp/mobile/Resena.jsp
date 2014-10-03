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

<table width="100%" cellspacing="50">
  <tr>
    <td  align="center">
      <font style="font-size: 340%" > ${Resena.getTitulo()}</font>
    </td>
  </tr>
</table>


<form name="frmResena" action="ResenaEdit.htm" method="post">
<input type="hidden" name="id" id="id" value="${Resena.getId()}"/>
<table width="100%" >
  <tr>  
          <td width="100%"  style="border: 4px solid #eee;background : #F7FAFB ;">  
             
            <table width="100%">
              <tr>
                <td align="center">
                  <img width="100%" style="display: block;" src="${Pagina.getImgPATH()}/<c:out value="${Resena.getUrl()}"/>.jpg">
                </td>
              </tr>
            </table>
            
          </td>
  </tr>
</table>         
   
   <table width="88%" align="center">
            <tr>
              <td valign="top"  align="center">                  
                    <p align="justify"> <font style="font-size: 190%;font-family: sans-serif;line-height: 1.4;">${Resena.getTexto()}</font></p>
              </td>                           
            </tr>
            

            <tr bgcolor="white">
              <td>Aurtor : ${Resena.getAutor()}</td>
              <td></td>
            </tr>

</table>
</form>     

</div>


</div>
</body>
</html>