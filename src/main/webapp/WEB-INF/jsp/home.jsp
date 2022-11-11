<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table bgcolor="0" align="center">
        <tr>
            <c:forEach items="${filmVoList}" var="film" begin="0" end="3">
                <td>
                    <div style="width:250px;margin:10px">
                         <a href="filmInfo?filmId=${film.filmId}">
                             <img src="${pageContext.request.contextPath}${film.imgPath}"
                             style="width: 250px;height: 380px">
                         </a>
                        <div>
                            <a href="filmInfo?filmId=${film.filmId}">
                                <p style="color:white;top:50px;">${film.name}</p>
                            </a>
                            <a href="filmInfo?filmId=${film.filmId}">
                                <p style="color:white;top:50px;">导演：${film.director}</p>
                            </a>
                        </div>
                    </div>
                </td>
            </c:forEach>
        </tr>
        <tr>
            <c:forEach items="${filmVoList}" var="film" begin="4" end="7">
                <td>
                    <div style="width:250px;margin:10px">
                        <a href="filmInfo?filmId=${film.filmId}">
                            <img src="${pageContext.request.contextPath}${film.imgPath}"
                                 style="width: 250px;height: 380px">
                        </a>
                        <div>
                            <a href="filmInfo?filmId=${film.filmId}">
                                <p style="color:white;top:50px;">${film.name}</p>
                            </a>
                            <a href="filmInfo?filmId=${film.filmId}">
                                <p style="color:white;top:50px;">导演：${film.director}</p>
                            </a>
                        </div>
                    </div>
                </td>
            </c:forEach>
        </tr>
    </table>
</body>
</html>
