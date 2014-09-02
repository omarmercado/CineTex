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
		</ul>
</div>
	
<div id="content">

<table width="100%" cellspacing="50">
  <tr>
    <td  align="center">
      <font style="font-size: 200%" >Resena</font>
    </td>
  </tr>
</table>


<form name="frmResena" action="ResenaEdit.htm" method="post">
<input type="hidden" name="id" id="id" value="${Resena.getId()}"/>
<table width="100%" height="70%">
  <tr>
  
          <td width="100%"  style="border: 1px solid #eee;background : #F7FAFB url(images/column.gif) no-repeat;">  
            <table width="100%"  align="left" >
            <tr style="font-size: 300%" >
                <th align="left">    
                   ${Resena.getTitulo()} 
                </th>
            </tr>
            <tr style="height: 50px">
                <td colspan="6"></td>
            </tr>
            </table>
             
            <table width="70%" align="center">
              <tr>
                <td width="60%" align="center">
                  <img height="100%"  width="100%" src="jsp/img/<c:out value="${Articulo.getUrl()}"/>.jpg">
                </td>
              </tr>
            </table>
            
            
            <table width="100%" >
            <tr>
              <td valign="top" width="80%" align="justify">                  
                    <p style="font-size: x-large;"> ${Resena.getTexto()}</p>
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

<div id="footer"><p><a href="#">homepage</a> | <a href="mailto:denise@mitchinson.net">contact</a> | &copy; 2008 Anyone | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> |  Licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0  License</a></p></div>

</div>
</body>
</html>