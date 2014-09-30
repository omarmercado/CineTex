<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CineTex.NET</title>
<link href="mobile/theme/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div align="left" style="width: 10%">
<img  width="100%" src="theme/images/cinema.jpg" align="left" />
</div>


<h1><span style="color:black; font-size:400%;">CineTex.NET</span></h1>


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
      <font style="font-size: 300%" > ${Resena.getTitulo()}</font>
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
                  <img width="90%" style="display: block;" src="${Pagina.getImgPATH()}/<c:out value="${Resena.getUrl()}"/>.jpg">
                </td>
              </tr>
            </table>
            
            
            <table width="80%" align="center">
            <tr>
              <td valign="top" width="100%" align="center">                  
                    <p align="justify"> <font style="font-size: 210%;font-family: verdana;line-height: 1.3;">${Resena.getTexto()}</font></p>
              </td>                           
            </tr>
            

            <tr bgcolor="white">
              <td>Aurtor : ${Resena.getAutor()}</td>
              <td></td>
            </tr>
            </table>
          </td>
  </tr>
</table>
</form>     

</div>

<div id="footer" ><p><a href="Portada.htm">homepage</a> | <a href="mailto:CineTex@outlook.com">contact</a> | | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> |  Licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0  License</a></p></div>

</div>
</body>
</html>