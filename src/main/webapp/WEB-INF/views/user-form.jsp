<%@ page contentType="text/html; charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>Add New User</title>
        </head>

        <body>

            <h2 style="text-align:center;">Enter User Details</h2>

            <form action="<c:url value='/user/save' />" method="post" style="margin: 0 auto; width: 300px;">
                <table cellspacing="8">
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
                        <td colspan="2" style="text-align:center;">
                            <button type="submit">Save</button>
                        </td>
                    </tr>
                </table>
            </form>

            <br><br>

            <div style="text-align:center;">
                <a href="<c:url value='/user/list' />">Back to User List</a>
            </div>

        </body>

        </html>