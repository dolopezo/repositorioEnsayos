<%@ page import="anuncialo.BooksAnnouncement" %>



<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="booksAnnouncement.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${booksAnnouncementInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="booksAnnouncement.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${booksAnnouncementInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="booksAnnouncement.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${anuncialo.User.list()}" optionKey="id" required="" value="${booksAnnouncementInstance?.owner?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'dateTime', 'error')} required">
	<label for="dateTime">
		<g:message code="booksAnnouncement.dateTime.label" default="Date Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateTime" precision="day"  value="${booksAnnouncementInstance?.dateTime}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="booksAnnouncement.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${booksAnnouncementInstance?.author}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'bookName', 'error')} required">
	<label for="bookName">
		<g:message code="booksAnnouncement.bookName.label" default="Book Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bookName" required="" value="${booksAnnouncementInstance?.bookName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'bookPrice', 'error')} required">
	<label for="bookPrice">
		<g:message code="booksAnnouncement.bookPrice.label" default="Book Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="bookPrice" value="${fieldValue(bean: booksAnnouncementInstance, field: 'bookPrice')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'bookStatus', 'error')} required">
	<label for="bookStatus">
		<g:message code="booksAnnouncement.bookStatus.label" default="Book Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bookStatus" required="" value="${booksAnnouncementInstance?.bookStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'datePublication', 'error')} required">
	<label for="datePublication">
		<g:message code="booksAnnouncement.datePublication.label" default="Date Publication" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="datePublication" precision="day"  value="${booksAnnouncementInstance?.datePublication}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'forExchange', 'error')} ">
	<label for="forExchange">
		<g:message code="booksAnnouncement.forExchange.label" default="For Exchange" />
		
	</label>
	<g:checkBox name="forExchange" value="${booksAnnouncementInstance?.forExchange}" />

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'forSale', 'error')} ">
	<label for="forSale">
		<g:message code="booksAnnouncement.forSale.label" default="For Sale" />
		
	</label>
	<g:checkBox name="forSale" value="${booksAnnouncementInstance?.forSale}" />

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'language', 'error')} required">
	<label for="language">
		<g:message code="booksAnnouncement.language.label" default="Language" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="language" required="" value="${booksAnnouncementInstance?.language}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: booksAnnouncementInstance, field: 'publisher', 'error')} required">
	<label for="publisher">
		<g:message code="booksAnnouncement.publisher.label" default="Publisher" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="publisher" required="" value="${booksAnnouncementInstance?.publisher}"/>

</div>

