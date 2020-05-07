<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
  <head>
    <title>users from BD</title>
  </head>
  <body>
    <tr>
      <td>ID</td>
      <td>name</td>
      <td>age</td>
      <td>password</td>
    </tr>
    <form action="/" method="post">
      <tr>
        <td>
          <input type="number" name="id">
        </td>
        <td>
          <input type="text" name="name">
        </td>
        <td>
          <input type="text" name="age">
        </td>
        <td>
          <input type="text" name="pass">
        </td>
        <button type="submit">Add</button>
      </tr>
    </form>
    <tr>
      <td>ID</td>
      <td>name</td>
      <td>age</td>
      <td>password</td>
    </tr>
    <c:forEach items="${users}" var="user">
      <form method="get" action="/">
        <tr>
          <td>
            <input type="text" name="id" value="${user.id}">
          </td>
          <td>
            <input type="text" name="name newName" value="${user.name}">
          </td>
          <td>
            <input type="text" name="age" value="${user.age}">
          </td>
          <td>
            <input type="text" name="pass" value="${user.password}">
          </td>
      </form>
      <td>
        <form action="/admin" method="get">
          <input type="text" name="name" hidden value="${user.name}">
          <button type="submit">delete</button>
        </form>
      </td>
      <td>
        <form action="/admin" method="post">
          <input type="text" name="id" hidden value="${user.id}">
          <input type="text" name="newName" hidden value="${user.name}">
          <input type="text" name="age" hidden value="${user.age}">
          <input type="text" name="pass" hidden value="${user.password}">
          <button type="submit" value="update">update</button>
        </form>
      </td>
      </tr>
    </c:forEach>

  </body>
</html>
