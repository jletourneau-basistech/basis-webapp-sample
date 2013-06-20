
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="includes/header.jsp" />
 <div class="container">
     <div class="row">
       <div class="span12">
        <h1>Hello world! Checking Twitter Bootstrap </h1>
        <h4>Message : ${message}</h1>
        <p> The time on the server is ${serverTime}. </p>
       </div>
      </div>
  </div>
<jsp:include page="includes/footer.jsp" />