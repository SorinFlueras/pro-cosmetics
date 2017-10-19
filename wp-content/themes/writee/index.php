<?php 
/******************************************/
## Writty theme index.php
/******************************************/

$layout = 'standard';
$layout_css_class = 'compact-view';
$sidebar_layout   = esc_attr(get_theme_mod('wrt_sidebar_position', '2cr'));

get_header(); 

/***************************************/
## slider section 
/***************************************/

get_template_part('inc/theme/sliders/slider');

?>
	
	<section class="site-main <?php if(isset($sidebar_layout) && $sidebar_layout == '2cl') echo 'with-left-sidebar'; elseif(isset($sidebar_layout) && $sidebar_layout == '2cr') echo 'with-right-sidebar'; else echo '';?> ">
        <div class="site-container">
            <div class="site-row">
				<div class="site-content <?php echo $layout_css_class; if($sidebar_layout == '2cl'  || $sidebar_layout == '2cr') echo ' with-sidebar '; else echo ' with-no-sidebar '; ?>" id="site-content" role="main">
				<?php 
					get_template_part('inc/theme/layouts/'.$layout);
					if ($wp_query->max_num_pages > 1) writee_pagenavi(); 
				?>
				</div>
				<?php if($sidebar_layout == '2cl' || $sidebar_layout == '2cr'): ?>
				<div class="site-sidebar " id="sidebar" role="complementary">
					<?php get_sidebar(); ?>
				</div>
				<?php endif; ?>
			</div>
		</div>
	</section>
	
<?php 
get_footer();
?>