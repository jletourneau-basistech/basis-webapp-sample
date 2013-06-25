<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="includes/header.jsp" />
 <form class="form-horizontal" id="loginForm" name="loginForm" action="<c:url value='j_spring_security_check' />" method="post">
    <fieldset>

        <div class="control-group">
            <label class="control-label" for="usernameField">User Name:</label>
            <div class="controls">
                <input class="input-large" id="usernameField" type="text" name="j_username" autofocus="autofocus" autocapitalize="off" autocorrect="off"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="passwordField">Password:</label>
            <div class="controls">
                <input class="input-large" id="passwordField" type="password" name="j_password"/>
            </div>
        </div>
    </fieldset>
    <fieldset>

        <div class="controls">
            <button class="btn btn-primary" type="submit" value="Login">Login</button>
        </div>
    </fieldset>
</form>
<jsp:include page="includes/footer.jsp" />