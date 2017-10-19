<?php 
/******************************************************/
## Writty theme tag.php
## display blog tag taxonomies posts list.
/*****************************************************/


$layout = 'standard';
$layout_css_class = 'compact-view';
$sidebar_layout   = esc_attr(get_theme_mod('wrt_sidebar_position', '2cr'));


get_header();
?>
	<section class="site-main <?php if($sidebar_layout == '2cl') echo 'with-left-sidebar'; elseif($sidebar_layout == '2cr') echo 'with-right-sidebar'; else echo '';?> ">
	
        <div class="site-container">
            <div class="site-row">
				
				<div class="site-content <?php echo $layout_css_class; if($sidebar_layout == '2cl'  || $sidebar_layout == '2cr') echo ' with-sidebar '; else { if($layout == 'standard')echo ' site-col-center ';  else echo ' with-no-sidebar ';} ?>" id="site-content" role="main">
				
                   
                    <div class="site-content-header">
						<h6 class="site-header-title">
							<?php printf( __( 'Tag Archives: %s', 'writee' ), '<span>' . single_tag_title( '', false ) . '</span>' );	?>
							<?php $tag_id = get_query_var('tag_id'); ?>
							<a title="<?php echo esc_html__( 'Feed Subscription', 'writee' ); ?>" href="<?php echo get_term_feed_link($tag_id, 'post_tag', "rss2") ?>"><span class="ion-social-rss"></span></a>
							
						</h6>
						
					</div>
		
					<?php 
						get_template_part('inc/theme/layouts/'.$layout);
					?>
					
					<?php if ($wp_query->max_num_pages > 1) writee_pagenavi(); ?>
				</div>
			
				<?php if($sidebar_layout == '2cl' || $sidebar_layout == '2cr'): ?>
				<div class="site-sidebar" id="sidebar" role="complementary">
					<?php get_sidebar(); ?>
				</div>
				<?php endif; ?>
				
			</div>
		</div>
	</section>
<?php 
get_footer();
?>