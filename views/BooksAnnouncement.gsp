<HTML>
<head>
<title>BooksAnnouncement</title>
</head>
<body>
<g:link controller="BooksAnnouncementController" action="create"></g:link>
	<label for="bookName">Book Name: </label>
	<g:textField name="bookName" value="${booksAnnouncement.bookName}"></g:textField>
	<label for="bookStatus">Book Status: </label>
	<g:textField name="bookStatus" value="${booksAnnouncement.bookStatus}"></g:textField>
	<label for="author">Author: </label>
	<g:textField name="author" value="${booksAnnouncement.author}"></g:textField>
	<label for="publisher">Publisher: </label>
	<g:textField form="publisher" name="publisher" value="${booksAnnouncement.publisher}"></g:textField>
</body>
</HTML>