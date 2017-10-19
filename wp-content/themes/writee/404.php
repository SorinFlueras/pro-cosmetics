<?php 
/******************************************/
## Writty theme 404.php
/******************************************/


$sidebar_layout = esc_attr(get_theme_mod('wrt_sidebar_position', '2cr'));

get_header();
?>
	<section class="site-main <?php if($sidebar_layout == '2cl') echo 'with-left-sidebar'; elseif($sidebar_layout == '2cr') echo 'with-right-sidebar'; else echo '';?> ">
        <div class="site-container">
            <div class="site-row">
				
				<div class="site-content <?php if($sidebar_layout == '2cl'  || $sidebar_layout == '2cr') echo ' with-sidebar expand-view '; else echo ' with-no-sidebar compact-view '; ?>" id="site-content" role="main">
                    <article class="entry entry-center">
						<div class="entry-row">
							<div class="entry-full-center">
								<div class="entry-header" style="text-align:center;">
									<div class="entry-meta">
										<h2 itemprop="headline" class="entry-title">
											<?php echo esc_html__('Not Found', 'writee') ?> 
										</h2>
									</div>
								</div>
								<div class="entry-content">
									<p class="align-center"><?php echo esc_html__( 'The page you are looking for is no longer here, or never existed in the first place (bummer). You can try searching for what you are looking for using the form below. If that still doesn\'t provide the results you are looking for, you can always start over from the home page.', 'writee' ); ?></p>
									<?php get_search_form(); ?>
								</div>
							</div>
						</div>
					</article>
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