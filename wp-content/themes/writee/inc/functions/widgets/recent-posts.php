<?php
class WRT_Recent_Post_Widget extends WP_Widget {

	function __construct() {
	
		parent::__construct(
			'wrt_recent_posts', // Base ID
			esc_html__('WRITEE - Recent Posts', 'writee'), // Name
			array( 'description' => esc_html__( 'The most recent posts on your blog.', 'writee' ), ) // Args
		);
	}
	
	function form($instance) {
 	
	 $title       = isset($instance['title']) ? esc_attr($instance['title']) : '';
	 $limit       = isset($instance['limit']) ? esc_attr( $instance['limit'] ) : '5';
	 $offset      = isset($instance['offset']) ? esc_attr( $instance['offset'] ) : '0';
?>
	<p>
		<label for="<?php echo esc_attr( $this->get_field_id( 'title' )); ?>"><?php esc_html_e('Title', 'writee'); ?>:</label>
		<input type="text" id="<?php echo esc_attr($this->get_field_id( 'title' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'title' )); ?>" value="<?php echo $title; ?>" class="widefat" />
	</p>
	
	<p>
		<input class="checkbox" type="checkbox" <?php if(isset($instance['ignore_sticky'])): checked( esc_attr($instance['ignore_sticky']), 1 ); endif; ?> id="<?php echo esc_attr($this->get_field_id( 'ignore_sticky' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'ignore_sticky' )); ?>" value="1" />
		<label for="<?php echo esc_attr($this->get_field_id( 'ignore_sticky' )); ?>">
			<?php esc_html_e( 'Ignore sticky posts', 'writee' ); ?>
		</label>
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'limit' )); ?>"><?php esc_html_e('Show up to', 'writee'); ?>:</label><br />
		<input type="number" step="1" min="-1" id="<?php echo esc_attr($this->get_field_id( 'limit' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'limit' )); ?>" value="<?php echo $limit; ?>" class="widefat" style="width:50px!important" /> <?php esc_html_e('posts', 'writee'); ?>
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'offset' )); ?>">
			<?php esc_html_e( 'Offset', 'writee' ); ?>
		</label>
		<input class="widefat" id="<?php echo esc_attr($this->get_field_id( 'offset' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'offset' )); ?>" type="number" step="1" min="0" value="<?php echo $offset ; ?>" />
		<small><?php esc_html_e( 'The number of posts to skip', 'writee' ); ?></small>
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'post_status' )); ?>">
			<?php esc_html_e( 'Post Status', 'writee' ); ?>
		</label>
		<select class="widefat" id="<?php echo esc_attr($this->get_field_id( 'post_status' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'post_status' )); ?>" style="width:100%;">
			<?php foreach ( get_available_post_statuses() as $status_value => $status_label ) { ?>
				<option value="<?php echo esc_attr( $status_label ); ?>" <?php if(isset($instance['post_status'])): selected( $instance['post_status'], $status_label ); endif; ?>><?php echo esc_html( ucfirst( $status_label ) ); ?></option>
			<?php } ?>
		</select>
	</p>
	
	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'order' )); ?>">
			<?php esc_html_e( 'Order', 'writee' ); ?>
		</label>
		<select class="widefat" id="<?php echo esc_attr($this->get_field_id( 'order' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'order' )); ?>" style="width:100%;">
			<option value="<?php echo esc_attr('DESC')?>" <?php if(isset($instance['order'])): selected( $instance['order'], 'DESC' ); endif; ?>><?php esc_html_e( 'Descending', 'writee' ) ?></option>
			<option value="<?php echo esc_attr('ASC')?>" <?php if(isset($instance['order'])): selected( $instance['order'], 'ASC' ); endif; ?>><?php esc_html_e( 'Ascending', 'writee' ) ?></option>
		</select>
	</p>

	<p>
		<label for="<?php echo esc_attr($this->get_field_id( 'orderby')); ?>">
			<?php esc_html_e( 'Orderby', 'writee' ); ?>
		</label>
		<select class="widefat" id="<?php echo esc_attr($this->get_field_id( 'orderby')); ?>" name="<?php echo esc_attr($this->get_field_name( 'orderby' )); ?>" style="width:100%;">
			<option value="<?php echo esc_attr('ID')?>" <?php if(isset($instance['orderby'])): selected( $instance['orderby'], 'ID' ); endif; ?>><?php esc_html_e( 'ID', 'writee' ) ?></option>
			<option value="<?php echo esc_attr('author')?>" <?php if(isset($instance['orderby'])): selected( $instance['orderby'], 'author' );  endif; ?>><?php esc_html_e( 'Author', 'writee' ) ?></option>
			<option value="<?php echo esc_attr('title')?>" <?php if(isset($instance['orderby'])): selected( $instance['orderby'], 'title' );  endif; ?>><?php esc_html_e( 'Title', 'writee' ) ?></option>
			<option value="<?php echo esc_attr('date')?>" <?php if(isset($instance['orderby'])): selected( $instance['orderby'], 'date' ); endif; ?>><?php esc_html_e( 'Date', 'writee' ) ?></option>
			<option value="<?php echo esc_attr('modified')?>" <?php if(isset($instance['orderby'])): selected( $instance['orderby'], 'modified' ); endif; ?>><?php esc_html_e( 'Modified', 'writee' ) ?></option>
			<option value="<?php echo esc_attr('rand')?>" <?php if(isset($instance['orderby'])): selected( $instance['orderby'], 'rand' ); endif; ?>><?php esc_html_e( 'Random', 'writee' ) ?></option>
			<option value="<?php echo esc_attr('comment_count')?>" <?php if(isset($instance['orderby'])): selected( $instance['orderby'], 'comment_count' ); endif; ?>><?php esc_html_e( 'Comment Count', 'writee' ) ?></option>
			<option value="<?php echo esc_attr('menu_order')?>" <?php if(isset($instance['orderby'])): selected( $instance['orderby'], 'menu_order' ); endif; ?>><?php esc_html_e( 'Menu Order', 'writee' ) ?></option>
		</select>
	</p>
	
	<p>
		<input id="<?php echo esc_attr($this->get_field_id( 'show_cat' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'show_cat' )); ?>" type="checkbox" value="<?php echo esc_attr('1')?>" <?php if(isset($instance['show_cat'])): checked( esc_attr($instance['show_cat']), 1 ); endif; ?>/>
		<label for="<?php echo esc_attr($this->get_field_id( 'show_cat')); ?>">
			<?php esc_html_e( 'Display post category(ies)', 'writee' ); ?>
		</label>
	</p>

	<p>
		<input id="<?php echo esc_attr($this->get_field_id( 'show_author' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'show_author' )); ?>" type="checkbox" value="<?php echo esc_attr('1')?>"<?php if(isset($instance['show_author'])): checked( esc_attr($instance['show_author']), 1 ); endif; ?>/>
		<label for="<?php echo esc_attr($this->get_field_id( 'show_author' )); ?>">
			<?php esc_html_e( 'Display post author(s)', 'writee' ); ?>
		</label>
	</p>
	
	<p>
		<input id="<?php echo esc_attr($this->get_field_id( 'show_date' )); ?>" name="<?php echo esc_attr($this->get_field_name( 'show_date' )); ?>" type="checkbox" value="<?php echo esc_attr('1')?>" <?php if(isset($instance['show_date'])): checked( esc_attr($instance['show_date']), 1 ); endif; ?>/>
		<label for="<?php echo esc_attr($this->get_field_id( 'show_date' )); ?>">
			<?php esc_html_e( 'Display Date', 'writee' ); ?>
		</label>
	</p>
	
	
<?php
	}

	function update($new_instance, $old_instance) {
		$instance = $old_instance;

		$instance['title'] = isset($new_instance['title']) ? esc_html( $new_instance['title'] ) : '';
		$instance['limit']  = isset($new_instance['limit']) ? esc_html($new_instance['limit']) : 5;
		$instance['offset'] = isset($new_instance['offset']) ? esc_html($new_instance['offset']): 0;
		
		$instance['ignore_sticky']    = isset($new_instance['ignore_sticky']) ? esc_html($new_instance['ignore_sticky']) : '';
		
		$instance['post_status'] =  isset($new_instance['post_status']) ? esc_html($new_instance['post_status']) : 'publish';
		
		$instance['order'] =  isset($new_instance['order']) ? esc_html($new_instance['order']) : 'DESC';
		
		$instance['order_by'] = isset( $new_instance['order_by'] ) ? esc_html($new_instance['order_by']) : 'ID';
		
		$instance['show_cat']    = isset( $new_instance['show_cat'] ) ? esc_html($new_instance['show_cat']) : '';
		
		$instance['show_author']   = isset( $new_instance['show_author'] ) ? esc_html($new_instance['show_author']) : '';
		
		$instance['show_date']    = isset( $new_instance['show_date'] ) ? esc_html($new_instance['show_date']) : '';
			

		return $instance;
	}

	function widget($args, $instance) {
		
		$date_format = 'l, F j, Y';

		// output the widget
		$title       = isset($instance['title']) ? esc_html($instance['title']) : '';
		$offset      = isset($instance['offset']) ? esc_html($instance['offset']) :'0';
		$limit       = isset($instance['limit']) ?  esc_html($instance['limit']) :'5';
		$order_by    = isset($instance['order_by']) ? esc_html($instance['order_by']) :'modified';
		$order       = isset($instance['order']) ? esc_html($instance['order']) :'DESC';
		$post_status = isset($instance['post_status']) ? esc_html($instance['post_status']) :'publish';
		$ignore_sticky = isset($instance['ignore_sticky']) ? esc_html($instance['ignore_sticky']) :'1';
		
		echo $args['before_widget'];
		echo $args['before_title'] . $title . $args['after_title'];
		
		// Query arguments.
		$query = array(
			'offset'              => $offset,
			'posts_per_page'      => $limit,
			'orderby'             => $order_by,
			'order'               => $order,
			'post_status'         => $post_status,
			'ignore_sticky_posts' => $ignore_sticky,
		);
		
		$class_thumb = 'entry-small-thumb';
		$posts = new WP_Query( $query );
		
		if ( $posts->have_posts() ) :
		
			echo '<div class="entry-list '.$class_thumb.'">';
			
				while ( $posts->have_posts() ) : $posts->the_post();
				
					echo '<article class="entry">';
						
						writee_featured_image(get_the_ID(), 'thumbnail');
						
							if(isset($instance['show_cat']) && $instance['show_cat'] == 1):
								echo '<div class="entry-meta">';
								echo '<span class="entry-cat">'.get_the_category_list(' ').' </span>';
								echo '</div>';
							endif;
						
						
						echo '<h4 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" title="' . sprintf( esc_attr__( 'Permalink to %s', 'writee' ), the_title_attribute( 'echo=0' )) . '" rel="bookmark">' .  get_the_title() . '</a></h4>';
						
						if((isset($instance['show_author']) && $instance['show_author'] == 1) || 
						(isset($instance['show_date']) && $instance['show_date'] == 1)):
						echo '<div class="entry-meta">';
							if(isset($instance['show_author']) && $instance['show_author'] == 1):
								
								echo '<span class="entry-author">'.__('By','writee').' <a itemprop="name" href="'. get_author_posts_url(get_the_author_meta('ID')).'">'.get_the_author_meta('display_name').'</a> </span>';
							endif;
							if(isset($instance['show_date']) && $instance['show_date'] == 1):	
							
								echo '<span class="entry-date">'.__('on','writee').' <a href="'.get_month_link(get_the_time('Y'), get_the_time('m')).'">'.get_the_time($date_format).'</a> </span>';
							
							endif;
							
						echo '</div>';
						endif;
					echo '</article>';
					
				endwhile;
			echo '</div>';
		else:
			echo '<p>'.esc_html__('No post found.', 'writee').'</p>'."\n";
		endif;
		// Restore original Post Data.
		wp_reset_postdata();
		echo $args['after_widget'];
	}
	
	private function __is_numeric($number){
		return !empty($number) && is_numeric($number) && (intval($number) == floatval($number));
	}
}
register_widget( 'WRT_Recent_Post_Widget' );

?>