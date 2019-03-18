<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<title>JSTL fn:length() example</title>
</head>
<body>
<h1>JSTL Formatting functionS</h1>
<h2>JSTL fn:length() function</h2>
<c:set var="string1" value="This is String1"/>
<c:set var="string2" value="Hi"/>
<c:set var="string3" value="string3"/>
Length of String1 is: ${fn:length(string1)}<br>
Length of String2 is: ${fn:length(string2)}<br>
Length of String3 is: ${fn:length(string3)}
<br>
<br>
<h2>JSTL fn:CASE() functionS</h2>
 <c:set var="site" value="NiitTechnologies.com"/>
  <c:set var="author" value="RAJ"/>
  Hi This is ${fn:toUpperCase(author)} from ${fn:toLowerCase(site)}.
<br>
<br>
<h2>JSTL fn:split() function</h2>
<c:set var="msg" value="This is an example of JSTL function"/>
<c:set var="arrayofmsg" value="${fn:split(msg,' ')}"/>
<c:forEach var="i" begin="0" end="6"/>
 arrayofmsg[${i}]: ${arrayofmsg[i]}<br>
</body>
</html>