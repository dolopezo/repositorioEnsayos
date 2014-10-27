
<%@ page import="anuncialo.BooksAnnouncement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'booksAnnouncement.label', default: 'BooksAnnouncement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-booksAnnouncement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-booksAnnouncement" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list booksAnnouncement">
			
				<g:if test="${booksAnnouncementInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="booksAnnouncement.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${booksAnnouncementInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="booksAnnouncement.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${booksAnnouncementInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="booksAnnouncement.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="user" action="show" id="${booksAnnouncementInstance?.owner?.id}">${booksAnnouncementInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.dateTime}">
				<li class="fieldcontain">
					<span id="dateTime-label" class="property-label"><g:message code="booksAnnouncement.dateTime.label" default="Date Time" /></span>
					
						<span class="property-value" aria-labelledby="dateTime-label"><g:formatDate date="${booksAnnouncementInstance?.dateTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="booksAnnouncement.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${booksAnnouncementInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.bookName}">
				<li class="fieldcontain">
					<span id="bookName-label" class="property-label"><g:message code="booksAnnouncement.bookName.label" default="Book Name" /></span>
					
						<span class="property-value" aria-labelledby="bookName-label"><g:fieldValue bean="${booksAnnouncementInstance}" field="bookName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.bookPrice}">
				<li class="fieldcontain">
					<span id="bookPrice-label" class="property-label"><g:message code="booksAnnouncement.bookPrice.label" default="Book Price" /></span>
					
						<span class="property-value" aria-labelledby="bookPrice-label"><g:fieldValue bean="${booksAnnouncementInstance}" field="bookPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.bookStatus}">
				<li class="fieldcontain">
					<span id="bookStatus-label" class="property-label"><g:message code="booksAnnouncement.bookStatus.label" default="Book Status" /></span>
					
						<span class="property-value" aria-labelledby="bookStatus-label"><g:fieldValue bean="${booksAnnouncementInstance}" field="bookStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.datePublication}">
				<li class="fieldcontain">
					<span id="datePublication-label" class="property-label"><g:message code="booksAnnouncement.datePublication.label" default="Date Publication" /></span>
					
						<span class="property-value" aria-labelledby="datePublication-label"><g:formatDate date="${booksAnnouncementInstance?.datePublication}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.forExchange}">
				<li class="fieldcontain">
					<span id="forExchange-label" class="property-label"><g:message code="booksAnnouncement.forExchange.label" default="For Exchange" /></span>
					
						<span class="property-value" aria-labelledby="forExchange-label"><g:formatBoolean boolean="${booksAnnouncementInstance?.forExchange}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.forSale}">
				<li class="fieldcontain">
					<span id="forSale-label" class="property-label"><g:message code="booksAnnouncement.forSale.label" default="For Sale" /></span>
					
						<span class="property-value" aria-labelledby="forSale-label"><g:formatBoolean boolean="${booksAnnouncementInstance?.forSale}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.language}">
				<li class="fieldcontain">
					<span id="language-label" class="property-label"><g:message code="booksAnnouncement.language.label" default="Language" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${booksAnnouncementInstance}" field="language"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksAnnouncementInstance?.publisher}">
				<li class="fieldcontain">
					<span id="publisher-label" class="property-label"><g:message code="booksAnnouncement.publisher.label" default="Publisher" /></span>
					
						<span class="property-value" aria-labelledby="publisher-label"><g:fieldValue bean="${booksAnnouncementInstance}" field="publisher"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:booksAnnouncementInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${booksAnnouncementInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
