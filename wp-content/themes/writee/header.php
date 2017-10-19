<?php
/************************************************************/
# Declares the DOCTYPE for the site and include the <head>.
/************************************************************/
global $post;
?>
<!DOCTYPE html>
<!--[if IE 9]><html class="no-js ie9" <?php language_attributes(); ?>><![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" <?php language_attributes(); ?>><!--<![endif]-->

<head>
  <meta charset="<?php bloginfo( 'charset' ); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="profile" href="http://gmpg.org/xfn/11">
  
	<?php
		wp_head(); 
	?>
  
</head>
<body id="site-body" <?php body_class(); ?>>
<div class="site-mobile-navigation"></div>
<div class="site-wrapper">

	<?php get_template_part('inc/theme/headers/header1'); ?>