
<%@ page import="anuncialo.InternalUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'internalUser.label', default: 'InternalUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-internalUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-internalUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="buyerRank" title="${message(code: 'internalUser.buyerRank.label', default: 'Buyer Rank')}" />
					
						<g:sortableColumn property="sellerRank" title="${message(code: 'internalUser.sellerRank.label', default: 'Seller Rank')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'internalUser.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'internalUser.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'internalUser.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="publishedAnnouncements" title="${message(code: 'internalUser.publishedAnnouncements.label', default: 'Published Announcements')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${internalUserInstanceList}" status="i" var="internalUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${internalUserInstance.id}">${fieldValue(bean: internalUserInstance, field: "buyerRank")}</g:link></td>
					
						<td>${fieldValue(bean: internalUserInstance, field: "sellerRank")}</td>
					
						<td>${fieldValue(bean: internalUserInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: internalUserInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: internalUserInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: internalUserInstance, field: "publishedAnnouncements")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${internalUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
