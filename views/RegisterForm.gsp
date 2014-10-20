<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>New User</title>
</head>
<body>
	<h1>Registration Form</h1>
	<h4>Do you need an account?</h4>
	<g:link controller="UserController" action="logout"></g:link>
	<g:form action="register" name="RegisterForm">
	<label for="name">Name: </label>
	<g:textField name="name" value="${user?.name}"></g:textField>
	<label for="email">Email: </label>
	<g:textField name="email" value="${user?.email}"></g:textField>
	<label for="username">Username: </label>
	<g:textField name="username" value="${user?.username}"></g:textField>
	<label for="password">Password: </label>
	<g:textField name="password" value="${user?.password}"></g:textField>
	<label for="confirmPassword">Confirm password: </label>
	<g:textField name="confirmPassword" value=""></g:textField>
	<g:submitButton name="register" value="register"></g:submitButton>
	</g:form>
</body>

</html>