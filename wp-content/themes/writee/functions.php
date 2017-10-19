<?php 
/*
File Name: functions.php
Description: Core functions file of Writty theme.
Writty theme directories setup

*/


define('WRT_TEMPLATE_DIRECTORY_URI', get_template_directory_uri()); 
define('WRT_INC_DIR', get_template_directory() . '/inc' ); 
define('WRT_IMAGE_URL', WRT_TEMPLATE_DIRECTORY_URI . '/images' );

/*********************************************************/
## Writty theme functions files
/**********************************************************/
/**
 * Writee only works in WordPress 4.5 or later.
 */
if ( version_compare( $GLOBALS['wp_version'], '4.5', '<' ) ) {
	require_once(WRT_INC_DIR.'/functions/back-compat.php');
	return;
}
require_once(WRT_INC_DIR.'/functions/customizer.php');
require_once(WRT_INC_DIR.'/functions/theme-functions.php');
require_once(WRT_INC_DIR.'/functions/navigations.php');
require_once(WRT_INC_DIR.'/functions/sidebars.php');
require_once(WRT_INC_DIR.'/functions/widgets.php');
require_once(WRT_INC_DIR.'/functions/featured-media.php');
require_once(WRT_INC_DIR.'/functions/custom-css-js.php');

if ( ! isset( $content_width ) ) {
	$content_width = 1080;
}
?>