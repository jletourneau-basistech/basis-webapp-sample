<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
       <meta charset="utf-8">
       <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
       <link rel='stylesheet' href='/<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
        <style type="text/css">
              body {
                padding-top: 60px;
                padding-bottom: 40px;
              }
              .sidebar-nav {
                padding: 9px 0;
              }

              @media (max-width: 980px) {
                /* Enable use of floated navbar text */
                .navbar-text.pull-right {
                  float: none;
                  padding-left: 5px;
                  padding-right: 5px;
                }
              }
         </style>
    </head>
    <body>
       <div class="navbar navbar-inverse navbar-fixed-top">
         <div class="navbar-inner">
           <div class="container-fluid">
             <a class="brand" href="index.html"><tt>basistech</tt>::</a>
             <div class="nav-collapse collapse">
               <ul class="pull-right nav">
                 <li><a href="#">About</a></li>
                 <li><a href="#">Support</a></li>
                 <li><a href="<c:url value="j_spring_security_logout" />" > Logout</a></li>
               </ul>

               <ul class="nav" role="navigation">
                 <li class="dropdown">
                   <a id="drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Administration <b class="caret"></b></a>
                   <ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
                     <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Server Status</a></li>
                     <li role="presentation"><a role="menuitem" tabindex="-1" href="#">User Admin</a></li>
                   </ul>
                 </li>
                 <li class="dropdown">
                   <a href="#" id="drop2" role="button" class="dropdown-toggle" data-toggle="dropdown">Cases<b class="caret"></b></a>
                   <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                     <li role="presentation"><a role="menuitem" tabindex="-1" href="#">New Case</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Existing Cases</a></li>
                   </ul>
                 </li>
               </ul>
             </div><!--/.nav-collapse -->
           </div>
         </div>
        </div>