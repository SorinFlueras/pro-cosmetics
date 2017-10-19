<?php
    /**
    * Template Name: With Right Sidebar
    */
?> 
<?php 

/******************************************/
## Writee templates
## Content page with sidebar right hand side.
/******************************************/


get_header();
?>
	<section class="site-main with-right-sidebar">
        <div class="site-container">
            <div class="site-row">
				
				<div class="site-content with-sidebar" id="site-content" role="main">
                    
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
				
				<div class="site-sidebar" id="sidebar">
					<?php get_sidebar(); ?>
				</div>
				
			</div>
		</div>
	</section>
<?php 
get_footer();
?>
