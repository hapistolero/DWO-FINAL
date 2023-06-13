<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" 
jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dwadventureworks?user=root&password=" 
catalogUri="/WEB-INF/queries/adventureworks.xml"
>

select {[Measures].[LamaBekerja],[Measures].[TotalGaji],[Measures].[RataRataGaji]} ON COLUMNS,
  {([Employee],[Department],[PayHistory],[Time])} ON ROWS
from [hr]

</jp:mondrianQuery>





<c:set var="title01" scope="session">Query WHSAKILA using Mondrian OLAP</c:set>
