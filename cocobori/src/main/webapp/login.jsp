<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mason Contact Page</title>
<!--

Template 2094 Mason

http://www.tooplate.com/view/2094-mason

-->
<!-- load stylesheets -->
<link rel="stylesheet"
   href="//fonts.googleapis.com/css?family=Open+Sans:300,400">
<!-- Google web font "Open Sans", https://fonts.google.com/ -->
<link rel="stylesheet"
   href="font-awesome-4.7.0/css/font-awesome.min.css">
<!-- Font Awesome, http://fontawesome.io/ -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Bootstrap style, http://v4-alpha.getbootstrap.com/ -->
<link rel="stylesheet" href="css/tooplate-style.css">
<!-- Templatemo style -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>

<body>
   <div class="container-fluid">
      <div class="tm-body margin-b-50">
         <div class="tm-sidebar">
            <section id="welcome" class="tm-content-box tm-banner margin-b-15">
               <div class="tm-banner-inner">
                  <i class="fa fa-film fa-4x margin-b-40"></i>
                  <h1 class="tm-banner-title">Mason</h1>
                  <p class="tm-banner-subtitle">new HTML template</p>
               </div>
            </section>
            <nav class="tm-main-nav">
               <ul class="tm-main-nav-ul">
                  <li class="tm-nav-item"><a href="index.html"
                     class="tm-nav-item-link tm-button">Gallery</a></li>
                  <li class="tm-nav-item"><a href="timeline.html"
                     class="tm-nav-item-link tm-button">Timeline</a></li>
                  <li class="tm-nav-item"><a href="about.html"
                     class="tm-nav-item-link tm-button">About</a></li>
                  <li class="tm-nav-item"><a href="contact.html"
                     class="tm-nav-item-link tm-button active">Contact</a></li>
               </ul>
            </nav>
         </div>

         <div class="tm-main-content">
            <div class="tm-content-box tm-content-box-home">
               <h1>로그인</h1>
               <form action="LoginService" method="post">
                  <input type="email" name="user_email" placeholder="Email"><br>
                  <input type="password" name="user_pw" placeholder="pw"><br>
                  <input type="submit" value="Login">
               </form>
            </div>
         </div>
      </div>
      <h1><% String loginMember = (String)session.getAttribute("loginMember"); %></h1>
		<%=loginMember %>
      <footer class="tm-footer text-right">
         <p>
            Copyright &copy; <span class="tm-current-year">2018</span> Your
            Company - Designed by <a href="https://www.facebook.com/tooplate"
               target="_parent">Tooplate</a>
         </p>
      </footer>
   </div>
   <!-- container-fluid -->

   <!-- load JS files -->
   <script src="js/jquery-1.11.3.min.js"></script>
   <!-- jQuery (https://jquery.com/download/) -->
   <script>
      /* Google map
      ------------------------------------------------*/
      var map = '';
      var center;

      function initialize() {
         var mapOptions = {
            zoom : 16,
            center : new google.maps.LatLng(37.769725, -122.462154),
            scrollwheel : false
         };

         map = new google.maps.Map(document.getElementById('google-map'),
               mapOptions);

         google.maps.event.addDomListener(map, 'idle', function() {
            calculateCenter();
         });

         google.maps.event.addDomListener(window, 'resize', function() {
            map.setCenter(center);
         });
      }

      function calculateCenter() {
         center = map.getCenter();
      }

      function loadGoogleMap() {
         var script = document.createElement('script');
         script.type = 'text/javascript';
         script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDVWt4rJfibfsEDvcuaChUaZRS5NXey1Cs&v=3.exp&sensor=false&'
               + 'callback=initialize';
         document.body.appendChild(script);
      }

      $(document).ready(function() {

         // Google Map
         loadGoogleMap();

         // Update the current year in copyright
         $('.tm-current-year').text(new Date().getFullYear());
      });
   </script>
</body>
</html>