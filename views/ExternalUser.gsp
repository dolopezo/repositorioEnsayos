<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>${user.name }</title>
</head>
<style>
	.celda {
		width:200px
	}
</style>
<body>

	<table width="100%">
		<tr>
			<td></td><td with="500px" align="right"><g:link controller="UserController" action="logout">Logout</g:link></td>
		</tr>
		<tr>
			<th colspan="2">"${user?.name }"</th>
		</tr>
		<tr><td>"Image"</td></tr>
		<tr>
			<td><g:link controller="" action="">My Announcements</g:link></td>
		</tr>
		<tr>
			<td><g:link controller="saleAnnouncementController" action="">Sale</g:link></td>
		</tr>
		<tr>
			<td><g:link controller="jobAnnouncementController" action="">Job</g:link></td>
		</tr>
		<tr>
			<td><g:link controller="homeAnnouncementController" action="">Home</g:link></td>
		</tr>
		<tr>
			<td><g:link controller="booksAnnouncementController" action="">Books Announcement</g:link></td>
		</tr>



	</table>

</body>

</html>
