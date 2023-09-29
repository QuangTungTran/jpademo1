<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <link rel="stylesheet" type="text/css" href='${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/css/bootstrap.min.css' />
            <link rel="stylesheet" href='/resources/css/main.css'>
            <script type="text/javascript" src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<html>
<jsp:include page="header.jsp"/>
<body>

    <div class="container" style="margin-top: 60px">
            <div class="col-md-4">
                <form:form action="${action}" method="post" modelAttribute="book">
                    <fieldset class="scheduler-border">
                        <legend class="scheduler-border"><c:out value="${msg}"/></legend>
                        <c:if test="${type.equals('update')}">
                            <div class="form-group">
                                <label class="control-label">ID</label>
                                <form:input style= "height:30px" path="bookDetails.id" type="text" class="form-control" id="id" placeholder="ID" disabled="true"/>
                                <form:hidden path="id"/>
                                <form:hidden path="bookDetails.id"/>
                            </div>
                        </c:if>
                        <div class="form-group">
                            <label class="control-label" >Name (*)</label>
                            <form:input style= "height:30px" path="name" type="text" class="form-control" placeholder="Name" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Author (*)</label>
                            <form:input style= "height:30px" path="author" type="text" class="form-control" placeholder="Author" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">ISBN (*)</label>
                            <form:input style= "height:30px" path="bookDetails.isbn" type="text" class="form-control" placeholder="ISBN" required="true" min="1"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Price (*)</label>
                            <form:input style= "height:30px" path="bookDetails.price" type="number" step="any" class="form-control" placeholder="Price" required="true" min="1"/>
                        </div>
                        <div class="form-group">
                                                <label class="control-label">Number of pages (*)</label>
                                                <form:input style= "height:30px" path="bookDetails.numberOfPage" type="number" step="any" class="form-control" placeholder="Number Of Page" required="true" min="1"/>
                                            </div>
                        <div class="form-group">
                            <label class="control-label">Publish Date (*)</label>
                            <form:input style= "height:30px" path="bookDetails.publishDate" type="date" class="form-control" placeholder="Publish Date" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Category (*)</label>
                            <form:select  path="category.id" class="form-control">
                                <form:option value="0" label="--- Select ---"/>
                                <form:options items="${categoryList}"/>
                            </form:select>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-info">Save</button>
                    </fieldset>
                </form:form>
            </div>
        </div>
</body>
</html>