<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CineTex.com</title>
<link href="mobile/theme/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<h1><span style="color:#259FDA; font-size:400%;">CineTex.com</span></h1>

<div id="container">

<div id="topnav">

		<ul>
		<li><font size="100%"><a href="Portada.htm">Portada</a></font></li>
		<li><font size="100%"><a href="Archivo.htm">Archivo</a></font></li>
		</ul>

</div>
		
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
                    <a href="Resena.htm?id=<c:out value="${Resena.getId()}" />" target="_blank"  style="color : #484500;text-decoration : none;">
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
<div id="footer" ><p><a href="#">homepage</a> | <a href="mailto:denise@mitchinson.net">contact</a> | &copy; 2008 Anyone | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> |  Licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0  License</a></p></div>

</body>
</html>