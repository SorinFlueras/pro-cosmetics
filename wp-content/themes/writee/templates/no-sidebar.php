<?php 
/*
Template Name: No Sidebar
*/
/******************************************/
## Writee templates
## Content page without sidebar.
/******************************************/



get_header();
?>
	<section class="site-main ">
        <div class="site-container">
            <div class="site-row">
				<div class="site-content with-no-sidebar" id="site-content" role="main">
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
			</div>
		</div>
	</section>
<?php 
get_footer();
?>
