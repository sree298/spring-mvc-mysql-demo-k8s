<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Saved</title>
</head>
<body>
<h2>User Saved Successfully!</h2>

<p><strong>Name:</strong> ${user.name}</p>
<p><strong>Email:</strong> ${user.email}</p>
<p><strong>Age:</strong> ${user.age}</p>

<p><a href="<c:url value='/user/form' />">Add another user</a></p>

</body>
</html>

