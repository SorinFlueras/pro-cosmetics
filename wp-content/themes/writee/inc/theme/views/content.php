<?php 

global $post;

?>
<article id="entry-<?php the_ID(); ?>" <?php post_class(); ?>>

	<?php if(is_single()): ?>
	<div class="entry-row">
		<div class="entry-full-center" style="text-align:center;">
			<?php 
				get_template_part('inc/theme/views/content-post-header');
				writee_featured_image(get_the_ID(), 'WRT-post-image');
			?>
			
			<div class="entry-content">
				
				<?php the_content();?>
				
			</div>
			<div class="entry-paginated-link"><?php wp_link_pages(); ?></div>
			<?php 
				
				the_tags( '<div class="entry-tags">'.__( '', 'writee' )  ,' ', '</div>'); 
				
				get_template_part('inc/theme/views/content-post-footer'); 
			?>
			
		</div>
	</div>
	
	<?php 
		$prevPost = get_previous_post(false);
		$nextPost = get_next_post(false);
		if($prevPost || $nextPost):
	?>
	<div class="entry-navigation">
		<?php if($prevPost): ?>
		<div class="entry-previous">
			<?php
				previous_post_link( '%link', ' '. __( 'Previous Post', 'writee' ).'',false );
			?>
		</div> 
		<?php endif; if($nextPost): ?>
		<div class="entry-next">
			<?php 
				next_post_link( '%link', ''. __( 'Next Post', 'writee' ).'',false ); 
			?>
		</div>
		<?php endif; ?>
	</div><!-- .post-navigation -->
	<?php endif; 
		get_template_part( 'inc/theme/posts/post-related');
	endif;
	?>
    
</article>