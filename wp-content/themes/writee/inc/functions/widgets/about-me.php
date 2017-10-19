<?php 
/************************************************/
## About me custom widget.
/************************************************/
class WRT_aboutme_widget extends WP_Widget {
	
	public function __construct() {
		parent::__construct('wrt_about', /* Unique widget ID */
			esc_html__('WRITEE - About Me', 'writee'), /* Widget title display in widget area. */
			array( 'description' => esc_html__( 'About me widget content.', 'writee' ), ) /* Widget description */
		);
	}
	
	/**********************************************/
	## Creating widget front-end
	## This is where the action happens 
	/*********************************************/
	public function widget( $args, $instance ) {
	
		$title = isset($instance['title']) ? esc_html($instance['title']) : '';
		$wrt_author_name = isset($instance['wrt_author_name']) ? esc_html($instance['wrt_author_name']) : '';
		$wrt_author_description = isset($instance['wrt_author_description']) ? esc_html($instance['wrt_author_description']) : '';
		
		$wrt_author_image = isset($instance['wrt_author_image']) ? esc_url($instance['wrt_author_image']) : '';
		
		echo $args['before_widget']; /* before and after widget arguments are defined by themes */
		if ( ! empty( $title ) )
		echo $args['before_title'] . $title . $args['after_title'];
	
		
		/* This is where you run the code and display the output */
		echo'<div class="author">';
			if($wrt_author_image != ''):
			echo '<div class="author-image"><img src="'.$wrt_author_image.'" alt="'.$wrt_author_name.'"></div>';
			endif;
			echo '
			<div class="author-meta">
				<h6 class="author-name">'.$wrt_author_name.'</h6>
				<p class="author-desc">'.$wrt_author_description.'</p>
			</div>
		</div>';
		echo $args['after_widget'];
	}
	
	/****************************************/
	## Widget Backend 
	/****************************************/
	
	public function form( $instance ) {
		
		$title = isset( $instance[ 'title' ] ) ? esc_attr($instance[ 'title' ]) : '';
		$wrt_author_name = isset( $instance[ 'wrt_author_name' ] ) ? esc_attr($instance[ 'wrt_author_name' ]) : '';
		$wrt_author_image = isset( $instance[ 'wrt_author_image' ] ) ? esc_url($instance['wrt_author_image']) : '';
		$wrt_author_description = isset( $instance[ 'wrt_author_description' ] ) ? esc_attr($instance['wrt_author_description']) : '';
		
		
		/* Widget admin form */
	?>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'title' )); ?>"><?php esc_html_e( 'Title', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'title' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'title' )); ?>" type="text" value="<?php echo $title; ?>" />
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'wrt_author_name' )); ?>"><?php esc_html_e( 'Author Name', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_author_name' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_author_name' )); ?>" type="text" value="<?php echo $wrt_author_name; ?>" />
	</p>
	
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'wrt_author_image' )); ?>"><?php esc_html_e( 'Author Image', 'writee' ); ?></label> 
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_author_image')); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_author_image' )); ?>" type="text" value="<?php echo $wrt_author_image; ?>" />
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'wrt_author_description')); ?>"><?php esc_html_e( 'Description', 'writee' ); ?></label> 
		<textarea class="widefat" id="<?php echo esc_attr($this->get_field_id( 'wrt_author_description')); ?>" name="<?php echo esc_attr($this->get_field_name( 'wrt_author_description' )); ?>"><?php echo $wrt_author_description; ?></textarea>
	</p>
	
	
	<?php 
	
	}
	
	/**********************************************************/
	## Updating widget replacing old instances with new.
	/**********************************************************/
	
	public function update( $new_instance, $old_instance ) {
		$instance = array();
		
		$instance['title'] = isset( $new_instance['title'] ) ? esc_html( $new_instance['title'] ) : '';
		
		$instance['wrt_author_name'] = isset( $new_instance['wrt_author_name'] ) ? esc_html( $new_instance['wrt_author_name'] ) : '';
		
		
		$instance['wrt_author_description'] = isset( $new_instance['wrt_author_description'] ) ? esc_html( $new_instance['wrt_author_description'] ) : '';
		
		$instance['wrt_author_image'] = isset( $new_instance['wrt_author_image'] ) ? esc_url( $new_instance['wrt_author_image'] ) : '';
		
		
		return $instance;
	}
} /* class end */

// Register and load the widget
register_widget( 'WRT_aboutme_widget' );

?>