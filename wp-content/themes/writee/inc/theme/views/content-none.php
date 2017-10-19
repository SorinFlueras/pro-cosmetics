<?php
/*******************************************************/
## no post found. Display content-none.
/*******************************************************/

?>
<article class="entry entry-center no-results not-found">
	<div class="entry-row">
		<div class="entry-full-center">
			<div class="entry-header">
				<h2 class="entry-title"><?php _e( 'Nothing Found', 'writee' ); ?></h2>
			</div><!-- .page-header -->

			<div class="entry-entry">
				<div class="entry-entry-text">
					<?php if ( is_home() && current_user_can( 'publish_posts' ) ) : ?>
						<p><?php printf( __( 'Ready to publish your first post? <a href="%1$s">Get started here</a>.', 'writee' ), esc_url( admin_url( 'post-new.php' ) ) ); ?></p>
					
					<?php elseif ( is_search() ) : ?>
						<p><?php _e( 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', 'writee' ); ?></p>
						
						<?php get_search_form(); ?>
					<?php else : ?> 
						<p><?php _e( 'It seems we can&rsquo;t find what you&rsquo;re looking for. Perhaps searching can help.', 'writee' ); ?></p>
						<?php get_search_form(); ?>

					<?php endif; ?>
				</div>
			</div>
		</div>
	</div><!-- .page-content -->
</article><!-- .no-results -->