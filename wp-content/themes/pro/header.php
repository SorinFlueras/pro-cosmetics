<!DOCTYPE html>
 <html lang="en"> <!--<![endif]-->  
<head>
    <title>Pro Cosmetics</title>

    <!-- Meta -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- CSS Global Compulsory-->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/plugins/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/style.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/headers/header1.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/plugins/bootstrap/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/style_responsive.css" />
    <link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/favicon.ico" />        
    <!-- CSS Implementing Plugins -->    
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/plugins/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/plugins/flexslider/flexslider.css" type="text/css" media="screen" />    	
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/plugins/parallax-slider/css/parallax-slider.css" type="text/css" />
    <!-- CSS Theme -->    
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/themes/default.css" id="style_color" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/themes/headers/default.css" id="style_color-header-1" />    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>	

<body>  

<!--=== Top ===-->    
<div class="top">
    <div class="container">         
        <ul class="loginbar pull-right">
            <li><a href="http://pro-cosmetics.eu/cos/" class="login-btn">Cosul Meu</a></li> /
            
            <?php

        if ( is_user_logged_in() ) {
            echo '
            <li><a href="http://pro-cosmetics.eu/contul-meu/" class="login-btn">Contul Meu</a></li> / 
            <li><a href="'. wp_logout_url() .'" class="login-btn">Deconectare</a></li>
            ';
        } else {
            echo '
            <li><a href="http://pro-cosmetics.eu/contul-meu/" class="login-btn">Conectare</a></li> / 
            <li><a href="http://pro-cosmetics.eu/wp-signup.php" class="login-btn">Creare cont</a></li>
            ';
        }

        ?>
        </ul>
    </div>      
</div><!--/top-->
<!--=== End Top ===-->    

<!--=== Header ===-->
<div class="header">               
    <div class="container"> 
        <!-- Logo -->       
        <div class="logo">                                             
            <a href="http://pro-cosmetics.eu/"><img id="logo-header" src="https://pro-cosmetics.eu/wp-content/themes/pro/assets/img/logo.png" /></a>
        </div><!-- /logo -->        
                                    
        <!-- Menu -->       
        <div class="navbar">                                
            <div class="navbar-inner">                                  
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a><!-- /nav-collapse -->                                  
                <div class="nav-collapse collapse">                                     
                    <ul class="nav top-2">
                        <li><a href="http://pro-cosmetics.eu/">Home</a></li>
                        
                          <li><a href="https://pro-cosmetics.eu/categorie-produs/articole-barbati/">Barbati</a></li>
                          <li><a href="https://pro-cosmetics.eu/categorie-produs/articole-par/aparatura-par/">Articole par</a></li>
                          <li><a href="https://pro-cosmetics.eu/categorie-produs/epilat/">Epilat</a></li>
                          <li><a href="https://pro-cosmetics.eu/categorie-produs/pamatuf/">Pamatuf</a></li>
                          <li><a href="https://pro-cosmetics.eu/categorie-produs/pelerine-tuns/">Pelerine Tuns</a></li>
                          <li><a href="https://pro-cosmetics.eu/promotii/">Promotii</a></li>
                          <li><a href="https://pro-cosmetics.eu/noutati/">Noutati</a></li>
                          <li><a href="https://pro-cosmetics.eu/contact/">Contact</a></li>                   
                    </ul>
                    
                </div><!-- /nav-collapse -->                                
            </div><!-- /navbar-inner -->
        </div><!-- /navbar -->                          
    </div><!-- /container -->               
</div><!--/header -->      
<!--=== End Header ===-->
<?php
if (is_home()) {
?>
<br />
<!--=== Slider ===-->
<div class="slider-inner">
    <div id="da-slider" class="da-slider">
        <div class="da-slide">
            <h2><i>Uscator Profesional ULTRAUSOR</i></h2>
            <div class="da-img"><img src="http://pro-cosmetics.eu/wp-content/themes/pro/images/1.png" alt="" /></div>
        </div>
        <div class="da-slide">
            <h2><i>Accesorii pentru Epilat</i><br /></h2>
            <div class="da-img"><img src="http://pro-cosmetics.eu/wp-content/themes/pro/images/2.png" alt="" /></div>
        </div>
        <div class="da-slide">
            <h2><i>Articole barbati</i><br /></h2>
            <div class="da-img"><img src="http://pro-cosmetics.eu/wp-content/themes/pro/images/3.jpg" alt="" /></div>
        </div>
        <nav class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>		
        </nav>
    </div><!--/da-slider-->
</div><!--/slider-->
<!--=== End Slider ===-->
<div class="spt20"></div>
    
<?php } ?>

<!--=== Content Part ===-->

<div class="container">		

	<div class="row-fluid">