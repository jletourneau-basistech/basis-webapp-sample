
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="includes/header.jsp" />
<div class="container">
 <div class="row">
   <div class="span12">
    <h1>Hello world! Checking Twitter Bootstrap </h1>
    <p> This is a default view for the web app.  You can check out:</p>
    <ul>
      <li><a href="welcome">A GET request for HTML</li>
      <li><a href="welcome/jason">A GET request for HTML with a path variable</li>
      <li><a href="welcome.json">A GET request for JSON</li>
      <li><a href="welcome/jason.json">A GET request for JSON with a path variable</li>

    </ul>
   </div>
  </div>
</div>
 <jsp:include page="includes/footer.jsp" />
