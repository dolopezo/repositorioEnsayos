<%@ page import="anuncialo.Announcement" %>



<div class="fieldcontain ${hasErrors(bean: announcementInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="announcement.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${announcementInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: announcementInstance, field: 'dateTime', 'error')} required">
	<label for="dateTime">
		<g:message code="announcement.dateTime.label" default="Date Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateTime" precision="day"  value="${announcementInstance?.dateTime}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: announcementInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="announcement.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${anuncialo.User.list()}" optionKey="id" required="" value="${announcementInstance?.owner?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: announcementInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="announcement.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${announcementInstance?.title}"/>

</div>

