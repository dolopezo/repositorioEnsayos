
<%@ page import="anuncialo.BooksAnnouncement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'booksAnnouncement.label', default: 'BooksAnnouncement')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-booksAnnouncement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-booksAnnouncement" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="content" title="${message(code: 'booksAnnouncement.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'booksAnnouncement.title.label', default: 'Title')}" />
					
						<th><g:message code="booksAnnouncement.owner.label" default="Owner" /></th>
					
						<g:sortableColumn property="dateTime" title="${message(code: 'booksAnnouncement.dateTime.label', default: 'Date Time')}" />
					
						<g:sortableColumn property="author" title="${message(code: 'booksAnnouncement.author.label', default: 'Author')}" />
					
						<g:sortableColumn property="bookName" title="${message(code: 'booksAnnouncement.bookName.label', default: 'Book Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${booksAnnouncementInstanceList}" status="i" var="booksAnnouncementInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${booksAnnouncementInstance.id}">${fieldValue(bean: booksAnnouncementInstance, field: "content")}</g:link></td>
					
						<td>${fieldValue(bean: booksAnnouncementInstance, field: "title")}</td>
					
						<td>${fieldValue(bean: booksAnnouncementInstance, field: "owner")}</td>
					
						<td><g:formatDate date="${booksAnnouncementInstance.dateTime}" /></td>
					
						<td>${fieldValue(bean: booksAnnouncementInstance, field: "author")}</td>
					
						<td>${fieldValue(bean: booksAnnouncementInstance, field: "bookName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${booksAnnouncementInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
