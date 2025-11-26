<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
</head>
<body>
<h2>Enter User Details</h2>

<form action="<c:url value='/user/save' />" method="post">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" required /></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="email" name="email" required /></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><input type="number" name="age" required /></td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Save</button>
            </td>
        </tr>
    </table>
</form>

</body>
</html>

