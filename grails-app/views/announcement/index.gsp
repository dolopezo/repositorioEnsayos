
<%@ page import="anuncialo.Announcement" %>
<!DOCTYPE html>
<html>
	<head>
		<!--  <meta name="layout" content="main">  -->
		<g:set var="entityName" value="${message(code: 'announcement.label', default: 'Announcement')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
<%--		<a href="#list-announcement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--%>
<%--		<div class="nav" role="navigation">--%>
<%--			<ul>--%>
<%--				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--%>
<%--				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--%>
<%--			</ul>--%>
<%--		</div>--%>
<%--		<div id="list-announcement" class="content scaffold-list" role="main">--%>
<%--			<h1><g:message code="default.list.label" args="[entityName]" /></h1>--%>
<%--			<g:if test="${flash.message}">--%>
<%--				<div class="message" role="status">${flash.message}</div>--%>
<%--			</g:if>--%>
<%--			<table>--%>
<%--			<thead>--%>
<%--					<tr>--%>
<%--					--%>
<%--						<g:sortableColumn property="content" title="${message(code: 'announcement.content.label', default: 'Content')}" />--%>
<%--					--%>
<%--						<g:sortableColumn property="dateTime" title="${message(code: 'announcement.dateTime.label', default: 'Date Time')}" />--%>
<%--					--%>
<%--						<th><g:message code="announcement.owner.label" default="Owner" /></th>--%>
<%--					--%>
<%--						<g:sortableColumn property="title" title="${message(code: 'announcement.title.label', default: 'Title')}" />--%>
<%--					--%>
<%--					</tr>--%>
<%--				</thead>--%>
<%--				<tbody>--%>
<%--				<g:each in="${announcementInstanceList}" status="i" var="announcementInstance">--%>
<%--					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--%>
<%--					--%>
<%--						<td><g:link action="show" id="${announcementInstance.id}">${fieldValue(bean: announcementInstance, field: "content")}</g:link></td>--%>
<%--					--%>
<%--						<td><g:formatDate date="${announcementInstance.dateTime}" /></td>--%>
<%--					--%>
<%--						<td>${fieldValue(bean: announcementInstance, field: "owner")}</td>--%>
<%--					--%>
<%--						<td>${fieldValue(bean: announcementInstance, field: "title")}</td>--%>
<%--					--%>
<%--					</tr>--%>
<%--				</g:each>--%>
<%--				</tbody>--%>
<%--			</table>--%>
<%--			<div class="pagination">--%>
<%--				<g:paginate total="${announcementInstanceCount ?: 0}" />--%>
<%--			</div>--%>
<%--		</div> --%>
<%--		--%>
		<div id="body">
	<table>
	<g:form controller="announcement" url="[controller:'announcement', action:'save']">
	<tr><td><label for="content">Content: </label></td>
	<td><g:textField name="content" value="${announcement?.content }"></g:textField></td></tr>
	<tr><td><label for="title">Title: </label></td>
	<td><g:textField name="title" value="${announcement?.title }"></g:textField></td>
	<tr><td><label for="owner">Owner :</label></td>
	<td><g:select name="Owner" from="User"/></td></tr>
	<tr><td><label for="dateTime">Date: </label></td>
	<td><g:datePicker name="dateTime" value=""/></td>
	
<%--	<tr><td><label for="bookName">Book Name: </label></td>--%>
<%--	<td><g:textField name="bookName" value="${booksAnnouncementInstance?.bookName}"></g:textField></td>--%>
<%--	<tr><td><label for="bookStatus">Book Status: </label></td>--%>
<%--	<td><g:textField name="bookStatus" value="${booksAnnouncementInstance?.bookStatus}"></g:textField></td>--%>
<%--	<tr><td><label for="author">Author: </label></td>--%>
<%--	<td><g:textField name="author" value="${booksAnnouncementInstance?.author}"></g:textField></td>--%>
<%--	<tr><td><label for="publisher">Publisher: </label></td>--%>
<%--	<td><g:textField form="publisher" name="publisher" value="${booksAnnouncementInstance?.publisher}"></g:textField></td></tr>--%>
	<tr><td><g:actionSubmit name="submit" value="save"/>
</g:form></table>
</div>
		
	</body>
</html>
