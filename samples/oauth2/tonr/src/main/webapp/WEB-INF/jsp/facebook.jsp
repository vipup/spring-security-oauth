<%@ taglib prefix="authz"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<c:url value="/" var="base" />
<link type="text/css" rel="stylesheet"
	href="${base}webjars/bootstrap/3.0.3/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${base}webjars/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript"
	src="${base}webjars/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<title>tonr</title>
</head>
<body>
	<div id="navbar" class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="https://github.com/spring-projects/spring-security-oauth">
				Tonr</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="${base}index.jsp">home</a></li>
				<authz:authorize access="hasRole('ROLE_USER')">
					<li><a href="${base}login.jsp">login</a></li>
				</authz:authorize>
				<li><a href="${base}sparklr/photos">sparklr pics</a></li>
				<li><a href="${base}facebook/info" class="selected">facebook
						friends</a></li>
			</ul>
		</div>
	</div>
	<div class="container">
		<h1>Your Facebook Friends:</h1>
		<ul>
			<c:forEach var="friendName" items="${friends}">
				<li><c:out value="${friendName}" /></li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>