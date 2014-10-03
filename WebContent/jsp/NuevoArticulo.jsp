<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/png" href="/theme/images/icon.png" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CineTex : Nuevo Articulo</title>
<link href="theme/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="container">
<div id="top"><h1>     <span style="color:#259FDA; font-size:14pt;">CineTex.net</span></h1></div>

<div id="navcontainer">
<div id="topnav">
		<ul>
		<li><a href="Portada.htm">Portada</a></li>
		<li><a href="Archivo.htm">Archivo</a></li>
		</ul>
</div>
</div>
	
<div id="content">

<h2>Nuevo Articulo</h2>

<c:if test="${sessionScope.usuario > 0}">

<form  method="post"  name="NuevoArticuloForm" action="NuevoArticulo.htm">
<table>
  <tr>
    <td>
    Titulo 
    </td>
    <td>
    <input type="text" name="titulo" id="titulo"/>
    </td>
  </tr>
 <tr>
    <td>
    Texto  
    </td>
    <td>
    <textarea name="texto" id="texto" rows="20" cols="35"> </textarea>
    </td>
 </tr>
 <tr>
    <td>
    URL de Imagen  
    </td>
    <td>
    <input type="text" name="url" id="url"/>
    </td>
 </tr>
  <tr>
    <td>
    Content  
    </td>
    <td>
    <input type="text" name="content" id="content"/>
    </td>
 </tr>
  <tr>
    <td>
    ogContent
    </td>
    <td>
    <input type="text" name="ogContent" id="ogContent"/>
    </td>
 </tr>
  <tr>
    <td>
    <input type="submit" value="Nueva Nota">
    </td>
  </tr>
</table>
</form>
</c:if>

</div>

<div id="footer" ><p><a href="Portada.htm">homepage</a> | <a href="mailto:CineTex@outlook.com">contact</a> | | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> |  Licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0  License</a></p></div>

</div>

</body>
</html>>