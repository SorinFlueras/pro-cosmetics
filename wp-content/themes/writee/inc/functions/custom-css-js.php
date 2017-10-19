<?php 
/******************************************************/
# custom css function .
/******************************************************/
if ( ! function_exists ( 'writee_custom_css_js' ) ) {
add_action( 'wp_head', 'writee_custom_css_js' );

function writee_custom_css_js(){
	$writee_head = '<style type="text/css">';
		/* Body typography */
		$writee_body_font_size = (int)esc_attr(get_theme_mod('wrt_font_size', '14'));
		$writee_body_line_height = esc_attr(get_theme_mod('wrt_line_height', '1.2'));
		$writee_body_letter_space = esc_attr(get_theme_mod('wrt_letter_space', '0'));
		$writee_font_family    = get_theme_mod('wrt_font_family');
		
		$writee_head .= 'html, body {';
		
		if($writee_font_family !=''):
			$writee_head .= 'font-family:'.$writee_font_family.';'; 
		endif;
		
		if($writee_body_font_size > 0):
			$writee_head .= 'font-size:'. $writee_body_font_size.'px;';
		endif;
		
		if($writee_body_line_height != ''):	
			$writee_head .= 'line-height:'. $writee_body_line_height.';';				
		endif;
		
		if($writee_body_letter_space != '' && $writee_body_letter_space > 0):	
			$writee_head .= 'letter-spacing:'. $writee_body_letter_space .'px;';				
		endif;
	
		$writee_head .= '}';
		
		/*primary color */
		$primary_color = esc_attr(get_theme_mod('wrt_primary_color', '#bf9e3b'));
	
		$writee_head .= '.entry-content a:not([class]), a:active, a:focus, a:hover{color:'. $primary_color.'}';
		
		$writee_head .= '.social-navigation.theme-colors,
		.comments-area .comments-list .comment .comment-meta .comment-header .comment-reply,
		.entry .entry-header .entry-meta .entry-cat,
		.entry .entry-quote-author,
		.widget.widget_recent-post .entry-list .entry .entry-meta .entry-cat, 
		.widget.widget_popular-post .entry-list .entry .entry-meta .entry-cat, 
		.widget.widget_posts .entry-list .entry .entry-meta .entry-cat, 
		.widget.widget_recent_posts .entry .entry-meta .entry-cat, 
		.widget.widget_related_posts .entry .entry-meta .entry-cat,
		.widget.widget_categories ul li a:hover,
		.widget.widget_product_categories ul li a:hover,
		.widget.widget_archive ul li a:hover,
		.widget.widget_archives ul li a:hover,
		.widget.widget_twitter .tweets-list .tweet a,
		.widget.widget_recent_comments .recentcomments span a{ color :'. $primary_color.'}'; 
		
		$writee_head .= '.widget.widget_categories ul li a:before,
		.widget.widget_product_categories ul li a:before,
		.widget.widget_archive ul li a:before, 
		.widget.widget_archives ul li a:before
		.widget.widget_archives ul li a:before {background-color: '. $primary_color. ' }';
		
		$writee_head .= '.widget.widget_tag_cloud .tagcloud a:hover {
			color:'. $primary_color.';
			border-color:'. $primary_color.'}';
		/* page loader enbled */
		
	$writee_head .= '.pace-running .pace{background-color:#ffffff;}
	.pace-done .pace{background-color:transparent;}
	.pace {
	  -webkit-pointer-events: none;
	  pointer-events: none;

	  -webkit-user-select: none;
	  -moz-user-select: none;
	  user-select: none;

	  position: fixed;
	  top: 0;
	  left: 0;
	  width: 100%;
	  z-index:9999;

	  -webkit-transform: translate3d(0, -50px, 0);
	  -ms-transform: translate3d(0, -50px, 0);
	  transform: translate3d(0, -50px, 0);

	  -webkit-transition: -webkit-transform .5s ease-out;
	  -ms-transition: -webkit-transform .5s ease-out;
	  transition: transform .5s ease-out;
	}

	.pace.pace-active {
	  -webkit-transform: translate3d(0, 0, 0);
	  -ms-transform: translate3d(0, 0, 0);
	  transform: translate3d(0, 0, 0);
	}

	.pace .pace-progress {
	  display: block;
	  position: fixed;
	  z-index: 2000;
	  top: 0;
	  right: 100%;
	  width: 100%;
	  height: 5px;
	  background:'.$primary_color.';
	  pointer-events: none;
	}
   </style>';
  	if(is_rtl()): 
	$writee_head .='<script> 
	var RTL = true;
	</script>';
	else:
	$writee_head .= '<script> 
	var RTL = false;
	</script>';
	endif; 
	
	echo $writee_head;
}	
}
?>