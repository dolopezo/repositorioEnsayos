
<%@ page import="anuncialo.InternalUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'internalUser.label', default: 'InternalUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-internalUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-internalUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list internalUser">
			
				<g:if test="${internalUserInstance?.buyerRank}">
				<li class="fieldcontain">
					<span id="buyerRank-label" class="property-label"><g:message code="internalUser.buyerRank.label" default="Buyer Rank" /></span>
					
						<span class="property-value" aria-labelledby="buyerRank-label"><g:fieldValue bean="${internalUserInstance}" field="buyerRank"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internalUserInstance?.sellerRank}">
				<li class="fieldcontain">
					<span id="sellerRank-label" class="property-label"><g:message code="internalUser.sellerRank.label" default="Seller Rank" /></span>
					
						<span class="property-value" aria-labelledby="sellerRank-label"><g:fieldValue bean="${internalUserInstance}" field="sellerRank"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internalUserInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="internalUser.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${internalUserInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internalUserInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="internalUser.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${internalUserInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internalUserInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="internalUser.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${internalUserInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internalUserInstance?.publishedAnnouncements}">
				<li class="fieldcontain">
					<span id="publishedAnnouncements-label" class="property-label"><g:message code="internalUser.publishedAnnouncements.label" default="Published Announcements" /></span>
					
						<span class="property-value" aria-labelledby="publishedAnnouncements-label"><g:fieldValue bean="${internalUserInstance}" field="publishedAnnouncements"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internalUserInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="internalUser.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${internalUserInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internalUserInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="internalUser.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${internalUserInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:internalUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${internalUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
