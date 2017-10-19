<?php 
/************************************************/
## About me custom widget.
/************************************************/
class WRT_socialicon_widget extends WP_Widget {
	
	public function __construct() {
		parent::__construct('wrt_social', /* Unique widget ID */
			esc_html__('WRITEE - Social Media URL', 'writee'), /* Widget title display in widget area. */
			array( 'description' => esc_html__( 'Social media URL widget.', 'writee' ), ) /* Widget description */
		);
	}
	
	/**********************************************/
	## Creating widget front-end
	## This is where the action happens 
	/*********************************************/
	public function widget( $args, $instance ) {
		
		$title = isset($instance['title']) ? esc_html($instance['title']) : '' ;
		$button_style = isset($instance['button_style']) ? esc_html($instance['button_style']) : '';
		$writee_fb_link      = isset($instance['wrt_fb_url']) ? esc_url($instance['wrt_fb_url']) : '';
		$writee_twitter_link = isset($instance['wrt_twitter_url']) ? esc_url($instance['wrt_twitter_url']) : '';
		$writee_insta_link   = isset($instance['wrt_instagram_url']) ? esc_url($instance['wrt_instagram_url']) : '';
		$writee_gplus_link   = isset($instance['wrt_google_url']) ? esc_url($instance['wrt_google_url']) : '';
		$writee_linked_link  = isset($instance['wrt_linkedin_url']) ? esc_url($instance['wrt_linkedin_url']) : '';
		$writee_ytube_link   = isset($instance['wrt_youtube_url']) ? esc_url($instance['wrt_youtube_url']) : '';
		$writee_pint_link    = isset($instance['wrt_pinterest_url']) ? esc_url($instance['wrt_pinterest_url']) : '';
		$writee_drib_link    = isset($instance['wrt_dribble_url']) ? esc_url($instance['wrt_dribble_url']) : '';
		
		/* This is where you run the code and display the output */
		$social_link_output ='<nav class="social-navigation '.$button_style.'"><ul>';
		
		if($writee_fb_link):
			$social_link_output .='<li><a href="'.$writee_fb_link.'"><span class="fa fa-facebook"></span></a></li>';
			
		endif;
		
		if($writee_twitter_link):
			$social_link_output .='<li><a href="'.$writee_twitter_link.'"><span class="fa fa-twitter"></span></a></li>';
			
		endif;

		if($writee_insta_link):
			$social_link_output .='<li><a href="'.$writee_insta_link.'"><span class="fa fa-instagram"></span></a></li>';
			
		endif;
		
		if($writee_gplus_link):
			$social_link_output .='<li><a href="'.$writee_gplus_link.'"><span class="fa fa-google-plus"></span></a></li>';
			
		endif;
		
		if($writee_linked_link):
			$social_link_output .='<li><a href="'.$writee_linked_link.'"><span class="fa fa-linkedin"></span></a></li>';
			
		endif;
		
		if($writee_ytube_link):
			$social_link_output .='<li><a href="'.$writee_ytube_link.'"><span class="fa fa-youtube"></span></a></li>';
			
		endif;
		
		if($writee_pint_link):
			$social_link_output .='<li><a href="'.$writee_pint_link.'"><span class="fa fa-pinterest-p"></span></a></li>';
		endif;
		
		if($writee_drib_link):
			$social_link_output .='<li><a href="'.$writee_drib_link.'"><span class="fa fa-dribbble"></span></a></li>';
			
		endif;
		
		$social_link_output .= '</ul></nav>';
		
		
		echo $args['before_widget']; /* before and after widget arguments are defined by themes */
		if ( ! empty( $title ) )
		echo $args['before_title'] . $title . $args['after_title'];
		
		echo $social_link_output;
		echo $args['after_widget'];
	}
	
	/****************************************/
	## Widget Backend 
	/****************************************/
	
	public function form( $instance ) {
		
		$title               = isset($instance['title']) ? esc_attr($instance['title']) : '' ;
		$button_style        = isset($instance['button_style']) ? esc_attr($instance['button_style']) : '';
		$writee_fb_link      = isset($instance['wrt_fb_url']) ? esc_url($instance['wrt_fb_url']) : '';
		$writee_twitter_link = isset($instance['wrt_twitter_url']) ? esc_url($instance['wrt_twitter_url']) : '';
		$writee_insta_link   = isset($instance['wrt_instagram_url']) ? esc_url($instance['wrt_instagram_url']) : '';
		$writee_gplus_link   = isset($instance['wrt_google_url']) ? esc_url($instance['wrt_google_url']) : '';
		$writee_linked_link  = isset($instance['wrt_linkedin_url']) ? esc_url($instance['wrt_linkedin_url']) : '';
		$writee_ytube_link   = isset($instance['wrt_youtube_url']) ? esc_url($instance['wrt_youtube_url']) : '';
		$writee_pint_link    = isset($instance['wrt_pinterest_url']) ? esc_url($instance['wrt_pinterest_url']) : '';
		$writee_drib_link    = isset($instance['wrt_dribble_url']) ? esc_url($instance['wrt_dribble_url']) : '';
		
	?>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'title' )); ?>"><?php esc_html_e( 'Title', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id('title')); ?>" name="<?php echo esc_attr($this->get_field_name('title')); ?>" type="text" value="<?php echo $title; ?>" />
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'button_style' )); ?>">
			<?php esc_html_e( 'Social Button Style', 'writee' ); ?>
		</label>
		<select class="widefat" id="<?php echo esc_attr($this->get_field_id( 'button_style')); ?>" name="<?php echo esc_attr($this->get_field_name( 'button_style')); ?>" style="width:100%;">
			<option value="<?php echo esc_attr('default-colors')?>" <?php selected( $button_style, 'default-colors' );?>><?php esc_html_e( 'Default Color', 'writee' ) ?></option>
			<option value="<?php echo esc_attr('theme-colors')?>" <?php  selected( $button_style, 'theme-colors' ); ?>><?php esc_html_e( 'Theme Color', 'writee' ) ?></option>
			<option value="<?php echo esc_attr('original-colors')?>" <?php selected( $button_style, 'original-colors' );  ?>><?php esc_html_e( 'Icon Original Color', 'writee' ) ?></option>
		</select>
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'wrt_fb_url' )); ?>"><?php esc_html_e( 'Facebook URL', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_fb_url' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_fb_url')); ?>" type="text" value="<?php echo $writee_fb_link; ?>" />
	</p>
	<p>
		<label for="<?php echo esc_attr($this->get_field_id('wrt_twitter_url')); ?>"><?php esc_html_e('Twitter URL', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_twitter_url' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_twitter_url' )); ?>" type="text" value="<?php echo $writee_twitter_link; ?>" />
	</p>
	<p>
		<label for="<?php echo esc_attr($this->get_field_id('wrt_instagram_url')); ?>"><?php esc_html_e( 'Instagram URL', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_instagram_url')); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_instagram_url')); ?>" type="text" value="<?php echo $writee_insta_link; ?>" />
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'wrt_linkedin_url')); ?>"><?php esc_html_e( 'Linkedin URL', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_linkedin_url')); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_linkedin_url')); ?>" type="text" value="<?php echo $writee_linked_link; ?>" />
	</p>
	
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'wrt_google_url' )); ?>"><?php esc_html_e( 'Google+ URL', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_google_url')); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_google_url')); ?>" type="text" value="<?php echo $writee_gplus_link; ?>" />
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'wrt_youtube_url' )); ?>"><?php esc_html_e( 'YouTube URL', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_youtube_url' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_youtube_url' )); ?>" type="text" value="<?php echo $writee_ytube_link; ?>" />
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'wrt_pinterest_url' )); ?>"><?php esc_html_e( 'Pinterest URL', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_pinterest_url')); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_pinterest_url' )); ?>" type="text" value="<?php echo $writee_pint_link; ?>" />
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'wrt_dribble_url' )); ?>"><?php esc_html_e('Dribble URL', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_dribble_url')); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_dribble_url')); ?>" type="text" value="<?php echo $writee_drib_link ; ?>" />
	</p>
	
	
	<?php 
	
	}
	
	/**********************************************************/
	## Updating widget replacing old instances with new.
	/**********************************************************/
	
	public function update( $new_instance, $old_instance ) {
		$instance = array();
		$instance['title'] = ( ! empty( $new_instance['title'] ) ) ? esc_html( $new_instance['title'] ) : '';
		
		$instance['button_style'] = ( ! empty( $new_instance['button_style'] ) ) ? esc_html( $new_instance['button_style'] ) : '';
		
		$instance['wrt_fb_url'] = ( ! empty( $new_instance['wrt_fb_url'] ) ) ? esc_url( $new_instance['wrt_fb_url'] ) : '';
		
		$instance['wrt_twitter_url'] = ( ! empty( $new_instance['wrt_twitter_url'] ) ) ? esc_url( $new_instance['wrt_twitter_url'] ) : '';
		
		$instance['wrt_google_url'] = ( ! empty( $new_instance['wrt_google_url'] ) ) ? esc_url( $new_instance['wrt_google_url'] ) : '';
		
		$instance['wrt_instagram_url'] = ( ! empty( $new_instance['wrt_instagram_url'] ) ) ? esc_url( $new_instance['wrt_instagram_url'] ) : '';
		
		$instance['wrt_linkedin_url'] = ( ! empty( $new_instance['wrt_linkedin_url'] ) ) ? esc_url( $new_instance['wrt_linkedin_url'] ) : '';
		
		$instance['wrt_youtube_url'] = ( ! empty( $new_instance['wrt_youtube_url'] ) ) ? esc_url( $new_instance['wrt_youtube_url'] ) : '';
		
		$instance['wrt_pinterest_url'] = ( ! empty( $new_instance['wrt_pinterest_url'] ) ) ? esc_url( $new_instance['wrt_pinterest_url'] ) : '';
		
		$instance['wrt_dribble_url'] = ( ! empty( $new_instance['wrt_dribble_url'] ) ) ? esc_url( $new_instance['wrt_dribble_url'] ) : '';
		
		return $instance;
	}
} /* class end */

// Register and load the widget
register_widget( 'WRT_socialicon_widget' );


?>