<?php
include "connect.php";
session_start();
if($_SESSION['userid'])
{
$id		=	$_SESSION['userid'];

$get	=	mysqli_fetch_array(mysqli_query($con,"SELECT a.username,a.userid,b.description FROM usertable a ,groups b WHERE a.userid='$id' && a.groupid = b.groupid "));
$user	=	$get['username'];
$userid	=	$get['userid'];
$desc  = $get['description'];
}else
{
	header('Location:index.php');
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>org</title>
<meta charset="iso-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="Description" content="sap,online training"/>
<meta name="Keywords" content="sap,online training"/>
<link href="css/main.css" rel="stylesheet" type="text/css" media="all">
<link href="css/mediaqueries.css" rel="stylesheet" type="text/css" media="all">
<link href='http://fonts.googleapis.com/css?family=Play:400,700' rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
<link href="css/ie8.css" rel="stylesheet" type="text/css" media="all">
<script src="js/css3-mediaqueries.min.js"></script>
<script src="js/html5shiv.min.js"></script>
<![endif]-->
<!-- Slider -->
<link href="css/responsiveslides.css" rel="stylesheet" type="text/css" media="all">
<!--Start of Zopim Live Chat Script-->

<!--End of Zopim Live Chat Script-->
</head>
<body>

<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>
<script src="js/fancybox.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jssor.slider.mini.js"></script>
    <!-- use jssor.slider.debug.js instead for debug -->
    <script>
        jQuery(document).ready(function ($) {

            var jssor_1_SlideshowTransitions = [
              {$Duration:1200,$Opacity:2}
            ];

            var jssor_1_options = {
              $AutoPlay: true,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1200);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 50);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>

    <style>

        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url('images/b05.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }

        /* jssor slider arrow navigator skin 12 css */
        /*
        .jssora12l                  (normal)
        .jssora12r                  (normal)
        .jssora12l:hover            (normal mouseover)
        .jssora12r:hover            (normal mouseover)
        .jssora12l.jssora12ldn      (mousedown)
        .jssora12r.jssora12rdn      (mousedown)
        */
        .jssora12l, .jssora12r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 30px;
            height: 46px;
            cursor: pointer;
            background: url('images/a12.png') no-repeat;
            overflow: hidden;
        }
        .jssora12l { background-position: -16px -37px; }
        .jssora12r { background-position: -75px -37px; }
        .jssora12l:hover { background-position: -136px -37px; }
        .jssora12r:hover { background-position: -195px -37px; }
        .jssora12l.jssora12ldn { background-position: -256px -37px; }
        .jssora12r.jssora12rdn { background-position: -315px -37px; }
    </style>

</head>


<div class="wrapper row1">
  <header id="header" class="full_width clear">
    <hgroup>
      <h1><img src="images/eorglogo.jpg"/></h1>
    </hgroup>
    <div id="header-contact">
      <ul class="list none">
      <li><span class="icon-phone"></span> <strong style="font-weight:bold;"><?php echo $desc;?></strong></li>

        <li><span class="icon-phone"></span> <strong style="font-weight:bold;">Welcome <?php echo $user;?></strong></li>

        <li id="Account"> | <a class="drop" href="passwordchange.php" title="My Account">My Account</a>
        <li id="Logout"> | <a class="drop" href="logout.php" title="Logout">Logout</a></li>
      </ul>
    </div>
  </header>
</div>
<!-- #################################################header menu############################################### -->
<div class="wrapper row2">
  <nav id="topnav">
    <ul class="clear">
			<li>&nbsp;</li>
              <li id="menu_home"><a href="indexmain.php">Home</a></li>



    </ul>
  </nav>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row5">

  <div class="clear"></div>
</div>
<!-- content -->
<div class="wrapper row3">
  <div id="container">
    <!-- ################################################################################################ -->

	    <div id="homepage" class="clear">
	      <section>
	           <ul class="nospace clear small-scrn">
		                       <li class="one_quarter first ">
		                           <article class="clear">
		                 <div class="one_third first push-right-bottom"><img src="images/password.png" alt=""></div>
		                 <div class="four_fifth">
		                   <h2 class="font-large nospace">Change Password</h2>

		                                </div>
		             </li>
 <!-- ################################################################################################ -->
       <div class="three_quarter">
	            <section class="clear three_fourth ">
	        <h1>Change Password</h1>
	        <div class="border-gray pad10">

	<form name="paycreate" method="post" action="passwordchange1.php" enctype="multipart/form-data">
	<ul class="nospace clear">
	                    <li class="one_quarter first"><div style="text-align:right;border:0px solid #cfcfcf;">User Id:</div></li>
	                    <li class="one_quarter" style="height: 20px;" ><input type="text" name="user"  value="<?php echo $userid ?>" STYLE=" background-color: #ccccb3; color: #FFFFFF;" readonly></li>
	                   <br><br><br>
	                   <li class="one_quarter first"><div style="text-align: right;border:0px solid #cfcfcf;">Old Password:</div></li>
	                     <li class="one_quarter" style="height: 20px;" > <input type="password" name="pass" ></li>
	      <br><br><br>
<li class="one_quarter first"><div style="text-align: right;border:0px solid #cfcfcf;">New Password:</div></li>
	                     <li class="one_quarter" style="height: 20px;" > <input type="password" name="newpass" ></li>
	                     </ul>
<br><br><br>
<input type="submit" class="button small red" name="download" value="Change Password"/>
</form>


         </div>



  <!-- ################################################################################################ -->
     <div class="clear"></div>
   </div>


           </li>
                   </ul>
       </section>


      <div class="clear">

<!-- Footer -->
<div class="wrapper row5">
   <div class="wrapper row4">
     <div id="copyright" class="clear">
       <p class="fl_left">Copyright &copy; 2016 - org. All Rights Reserved</p>
     </div>
   </div><!-- Scripts -->
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.min.js"></script>
   <script>window.jQuery || document.write('<script src="js/jquery-latest.min.js"><\/script>\
   <script src="js/jquery-ui.min.js"><\/script>')</script>
   <script>jQuery(document).ready(function($){ $('img').removeAttr('width height'); });</script>
   <script src="js/jquery-mobilemenu.min.js"></script>
   <script src="js/custom.js"></script>
   </body>
</html>