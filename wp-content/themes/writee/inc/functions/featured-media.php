<?php 
/*************************************************/
## Handles output of featured content for different post formats (e.g. images, audio, video, et cetera).
/*************************************************/
if ( ! function_exists ( 'writee_featured_image' ) ) {
function writee_featured_image( $post_id = NULL, $thmbSize = '', $attr=NULL ) {

    if ( has_post_thumbnail($post_id) ) {
	
		if ( $thmbSize ) {
		  $thumb = get_the_post_thumbnail( $post_id, $thmbSize , $attr );
		  //$src =   wp_get_attachment_image_src(get_post_thumbnail_id( $post_id), $thmbSize);
		
		} else {
		  $thumb = get_the_post_thumbnail( $post_id, 'full', $attr );
		  //$src =   wp_get_attachment_image_src(get_post_thumbnail_id( $post_id), 'full');
		  
		}
		$thumbMeta = wp_get_attachment_image_src(get_post_thumbnail_id( $post_id), 'full');
		
		printf('<div  class="entry-media" >
					<a href="%1$s" class="entry-thumb" title="%2$s">%3$s</a>
				</div>',esc_url(get_permalink($post_id)), esc_attr(sprintf( __( 'Permalink to: "%s"', 'writee' ), get_the_title($post_id) ) ), $thumb );
		
    }
}
}
  
?>