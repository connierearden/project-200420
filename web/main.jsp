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
            <input type="text" name="name" value="${user.name}">
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
      <ul>
        <form action="/admin" method="post">
          <li>
        <input type="text" name="id" value="${user.id}"></li>
          <li>
        <input type="text" name="name" value="${user.name}"></li>
          <li>
        <input type="text" name="age" value="${user.age}"></li>
          <li>
        <input type="text" name="pass" value="${user.password}"></li>
          <button type="submit">update</button>
        </form>
      </ul>
      </tr>
    </c:forEach>

  </body>
</html>
