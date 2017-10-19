<?php 
/****************************************************/
## standard post list
/****************************************************/
global $post;

$post_excerpt_status = get_theme_mod('wrt_blog_post_excerpt', 'enable');
	
?>
<article id="entry-<?php the_ID(); ?>" <?php post_class(); echo 'style="text-align:center;"';?>>
	<div class="entry-row">
		<div class="entry-full-center">
			<?php 
				get_template_part('inc/theme/views/content-post-header'); 
				writee_featured_image(get_the_ID(), 'WRT-post-image');
			?>
			<div class="entry-content">
				
				<?php 
					if ($post_excerpt_status == 'enable'):
						the_excerpt();
					 else:
						the_content( '' );
					endif;
				?>
				
			</div>
			<?php get_template_part('inc/theme/views/content-post-footer'); ?>
		</div>
	</div>
</article>