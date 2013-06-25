
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="includes/header.jsp" />
<script language=javascript>
    function validate(){
       location.href="/validate.json?uid=admin&auth_token=" + document.getElementById("tokenField").value;

    }
</script>
<div class="container">
 <div class="row">
   <div class="span12">
    <h1>Hello world! Checking Twitter Bootstrap </h1>
    <p> This is a default view for the web app.  You can check out:</p>
    <ul>
      <li><a href="welcome">A GET request for HTML</a></li>
      <li><a href="welcome/jason">A GET request for HTML with a path variable</a></li>
      <li><a href="welcome.json">A GET request for JSON</a></li>
      <li><a href="welcome/jason.json">A GET request for JSON with a path variable</a></li>
    </ul>

        <p> Auth and Token Stuff:</p>
        <ul>
          <li><a href="/token.json?uid=admin">GET the token for authenticated user: admin</a></li>
          <li><a href="javascript:validate();">Validate the token</a></li>
          <fieldset>
            <div class="control-group">
              <label class="control-label" for="tokenField">Token:</label>
              <div class="controls">
                  <input class="input-large" id="tokenField" type="text" name="tokenField" autocapitalize="off" autocorrect="off"/>
              </div>
             </div>
           </fieldset>


        </ul>

   </div>
  </div>
</div>
 <jsp:include page="includes/footer.jsp" />
