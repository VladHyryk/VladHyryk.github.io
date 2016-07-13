<%@ tag description="Template Tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!doctype>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/normalize.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/s/ArmorUtils.js" />"></script>
    <script src="<c:url value="/resources/s/prefixfree.min.js" />"></script>

    <title>Stone Forge</title>

</head>
<body>
<jsp:doBody/>
</body>
</html>