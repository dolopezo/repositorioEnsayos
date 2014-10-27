<%@ page import="anuncialo.InternalUser" %>



<div class="fieldcontain ${hasErrors(bean: internalUserInstance, field: 'buyerRank', 'error')} required">
	<label for="buyerRank">
		<g:message code="internalUser.buyerRank.label" default="Buyer Rank" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="buyerRank" from="${0..5}" class="range" required="" value="${fieldValue(bean: internalUserInstance, field: 'buyerRank')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internalUserInstance, field: 'sellerRank', 'error')} required">
	<label for="sellerRank">
		<g:message code="internalUser.sellerRank.label" default="Seller Rank" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sellerRank" from="${0..5}" class="range" required="" value="${fieldValue(bean: internalUserInstance, field: 'sellerRank')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internalUserInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="internalUser.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${internalUserInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internalUserInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="internalUser.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${internalUserInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internalUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="internalUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${internalUserInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internalUserInstance, field: 'publishedAnnouncements', 'error')} required">
	<label for="publishedAnnouncements">
		<g:message code="internalUser.publishedAnnouncements.label" default="Published Announcements" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="publishedAnnouncements" type="number" value="${internalUserInstance.publishedAnnouncements}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: internalUserInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="internalUser.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="role" required="" value="${internalUserInstance?.role}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: internalUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="internalUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${internalUserInstance?.username}"/>

</div>

