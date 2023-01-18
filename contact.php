<?php session_start(); ?>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]--><head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>Boyd &amp; Hassell Industrial &amp; Commercial Property | Contact Us</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="stylesheets/base.css">
	<link rel="stylesheet" href="stylesheets/skeleton.css">
	<link rel="stylesheet" href="stylesheets/layout.css">

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
	<script type="text/javascript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
    </script>
</head>

	<!-- Primary Page Layout
	================================================== -->

	<!-- Delete everything in this .container and get started on your own site! -->
<body onLoad="MM_preloadImages('images/email-icon-roll.png')">
    
    <div class="wrap-header">
      <div class="container">
       <h1 class="logo"><a href="index.html" title="Boyd & Hassell Industrial & Commercial Properties, Inc.">Boyd & Hassell Industrial & Commercial Properties, Inc.</a></h1>
        <nav class="main">
         <ul>
        <li><a href="index.html">HOME</a></li>
        <li><a href="history.html">HISTORY</a></li>
        <li><a href="services.html">SERVICES</a></li>
        <li><a href="properties.html">PROPERTIES</a></li>
        <li><a href="resources.html">RESOURCES</a></li>
        <li><a href="contact.php">CONTACT</a></li>
    </ul>
    </nav>
      </div>
    </div>
    
    <!-- End Header -->
    
    <div class="wrap-slides">
      	<div class="slides">
      		<img src="images/slider5.jpg">
      		<img src="images/slider1.jpg">
      		<img src="images/slider3.jpg">
      		<img src="images/slider2.jpg">
      		<img src="images/slider4.jpg">
    	</div>
    </div>
    
    
    <!-- End SlidesJS Required: Start Slides -->
    
    <div class="wrap-content">
	  <div class="container content">
	    <div class="four columns address-wide-contact">
        <p><span class="telephone">828.322.1723</span><br>
        Fax 828.322.4219<br>
        <br>
        200 First Avenue NW<br>
        Suite 507<br>
        Hickory, NC 28601</p>

        <img src="images/icon-phone.png" width="21" height="21" class="icons">
        <img src="images/icon-house.png" width="21" height="21" class="icons">
        
        <a href="https://www.facebook.com/bhicp" target="_blank"><img src="images/icon-facebook.png" alt="Find us on Facebook" width="95" height="25" border="0" class="fb"></a>
        
        </p>
</div>
        <div class="five columns maincopy-contact">
            
 <?php
    if (isset($_POST['submit'])) {
    $error = "";

    if (!empty($_POST['name'])) {
    $name = $_POST['name'];
    } else {
    $error .= "You didn't type in your name. <br />";
    }

    if (!empty($_POST['email'])) {
    $email = $_POST['email'];
      if (!preg_match("/^[_a-z0-9]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/i", $email)){ 
      $error .= "The e-mail address you entered is not valid. <br/>";
      }
    } else {
    $error .= "You didn't type in an e-mail address. <br />";
    }

    if (!empty($_POST['message'])) {
    $message = $_POST['message'];
    } else {
    $error .= "You didn't type in a message. <br />";
    }

    if(($_POST['code']) == $_SESSION['code']) { 
    $code = $_POST['code'];
    } else { 
    $error .= "The captcha code you entered does not match. Please try again. <br />";    
    }

    if (empty($error)) {
    $from = 'From: ' . $name . ' <' . $email . '>';
    $to = "gavinbmitchell@yahoo.com";
    $subject = "New contact form message";
    $content = $name . " has sent you a message: \n" . $message;
    $success = "<h2>Thank you! Your message has been sent!</h2>";
    mail($to,$subject,$content,$from);
    }
    }
    ?>      
            
      <div id="contactForm">
    
     <h1>Contact Us</h1>
    
    <?php
      if (!empty($error)) {
      echo '<p class="error"><strong>Your message was NOT sent<br/> The following error(s) returned:</strong><br/>' . $error . '</p>';
      } elseif (!empty($success)) {
      echo $success;
      }
    ?>
      <form action="contact.php" method="post">
      
        <label>Name:</label>
        <input type="text" name="name" value="<?php if ($_POST['name']) { echo $_POST['name']; } ?>" />
  
        <label>Email:</label>
        <input type="text" name="email" value="<?php if ($_POST['email']) { echo $_POST['email']; } ?>" />
        
        <label>Message:</label><br />
        <textarea name="message" rows="20" cols="20"><?php if ($_POST['message']) { echo $_POST['message']; } ?></textarea>
        
        <label><img src="captcha.php"></label>
        <input type="text" name="code"> <br /> 

        <input type="submit" class="submit" name="submit" value="Send message" />
        
      </form>
    </div>
	  </div>
            <div class="seven columns maincopy-contact"><br>
              <p>Please take a moment to complete our contact form or email us
                directly and someone from our office will respond to you shortly.</p>
              <p><span class="telephone">James Mitchell</span><br>
              President<br>
              <a href="mailto:jmitchell@bhicp.com"><img src="images/email-icon.png" alt="Email James Mitchell" width="64" height="29" border="0" id="Image1" onMouseOver="MM_swapImage('Image1','','images/email-icon-roll.png',1)" onMouseOut="MM_swapImgRestore()"></a>              
              
              <p><span class="telephone">Gavin Mitchell</span><br>
                Vice President<br>
                <a href="mailto:gavinbmitchell@yahoo.com"><img src="images/email-icon.png" alt="Email Gavin Mitchell" width="64" height="29" border="0" id="Image2" onMouseOver="MM_swapImage('Image2','','images/email-icon-roll.png',1)" onMouseOut="MM_swapImgRestore()"></a>
              
              <p><span class="telephone">Barrett</span> <span class="telephone">Mitchell </span><br>
              Broker<br>
              <a href="mailto:barrett@bhicp.com"><img src="images/email-icon.png" alt="Email Barrett Mitchell" name="Image3" width="64" height="29" border="0" id="Image3" onMouseOver="MM_swapImage('Image3','','images/email-icon-roll.png',1)" onMouseOut="MM_swapImgRestore()"></a>    <br>                                      
              </p>
            </div>
    </div>
   
    <!-- End Body Content -->
    
    <footer>
    	<div class="container">
       	  <div class="three columns"><a href="http://www.mightyanvil.com" target="_blank"><img src="images/sc-logo2.png" alt="Site Designed and Coded by Scott Cline Graphic Designer" width="175" height="65" border="0" class="scdesign"></a></div>
          <div class="ten columns botlinks">
            <p><a href="index.html">Home</a> | <a href="history.html">History</a> | <a href="services.html">Services</a> | <a href="properties.html">Properties</a> < <a href="lease.html">For
              Lease</a> | <a href="sale.html">For Sale</a> | <a href="land.html">Land</a> | <a href="resources.html">Resources</a> | <a href="contact.php">Contact</a> | <a href="sitemap.html">Site Map<br>
              </a><span class="copyright">©
              2014 Boyd & Hassell Industrial & Commercial Properties, Inc.</span>            </p>
          </div>
          <div class="three columns"><a href="index.html"><img src="images/bhipc-logo-reversed.png" width="114" height="55" border="0" class="bhicp"></a></div>
    	</div>
    
    </footer>



<!-- End Document
================================================== -->

  <!-- SlidesJS Required: Link to jQuery -->
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <!-- End SlidesJS Required -->

  <!-- SlidesJS Required: Link to jquery.slides.js -->
  <script src="js/jquery.slides.min.js"></script>
  <!-- End SlidesJS Required -->

  <!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
  <script>
    $(function() {
      $('.slides').slidesjs({
        width: 1400,
        height: 280,
        navigation: false,
        start: 1,
        play: {
          auto: true,
		effect: "fade"
        },
        pagination: {
          effect: "fade"
        },
        effect: {
          fade: {
            speed: 800
          }
		  }
		});
    });
  </script>

</body>
</html>