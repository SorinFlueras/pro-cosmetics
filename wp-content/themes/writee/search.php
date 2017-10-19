<?php 
/******************************************/
## Writty theme search.php
/******************************************/
global $wp_query;

$layout = 'standard';
$layout_css_class = 'compact-view';
$sidebar_layout   = esc_attr(get_theme_mod('wrt_sidebar_position', '2cr'));

get_header();

?>
	<section class="site-main <?php if($sidebar_layout == '2cl') echo 'with-left-sidebar'; elseif($sidebar_layout == '2cr') echo 'with-right-sidebar'; else echo '';?> ">
	
        <div class="site-container">
            <div class="site-row">
				
				<div class="site-content <?php echo $layout_css_class; if($sidebar_layout == '2cl'  || $sidebar_layout == '2cr') echo ' with-sidebar '; else { if($layout == 'standard')echo ' site-col-center ';  echo ' with-no-sidebar ';} ?>" id="site-content" role="main">
                    
					
					
					<div class="site-content-header">
						<h6 class="site-header-title">
							<?php printf( __( 'Search Results for: %s', 'writee' ), get_search_query() ); ?>
						</h6>
					</div>
	
					<?php 
						get_template_part('inc/theme/layouts/'.$layout);
					?>
					
					<?php if ($wp_query->max_num_pages > 1) writee_pagenavi(); ?>
				</div>
				
				<?php if($sidebar_layout == '2cl' || $sidebar_layout == '2cr'): ?>
					<div class="site-sidebar" id="sidebar">
						<?php get_sidebar(); ?>
					</div>
				<?php endif; ?>
				
			</div>
		</div>
	</section>
<?php 
get_footer();
?>