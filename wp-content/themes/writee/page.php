<?php 
/******************************************/
## Writty theme page.php
## Content page.
/******************************************/

$sidebar_layout = esc_attr(get_theme_mod('wrt_sidebar_position', '2cr'));


get_header();
?>
	<section class="site-main <?php if($sidebar_layout == '2cl') echo 'with-left-sidebar'; elseif($sidebar_layout == '2cr') echo 'with-right-sidebar'; else echo '';?> ">
	
        <div class="site-container">
            <div class="site-row">
				<div class="site-content <?php if($sidebar_layout == '2cl'  || $sidebar_layout == '2cr') echo ' with-sidebar expand-view '; else echo ' with-no-sidebar compact-view '; ?>" id="site-content" role="main">
                    
					<?php 
					if(have_posts()):
						while(have_posts()): the_post();
							get_template_part('inc/theme/views/content-page'); 
						endwhile;
					else:
						get_template_part('inc/theme/views/content-none'); 
					endif; 
					?>
					
					<?php 
						// If comments are open or we have at least one comment, load up the comment template.
						if ( comments_open() || get_comments_number() ) :
							comments_template('', true );
						endif;
					?>
					
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