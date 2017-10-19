<?php 
/******************************************************/
## Writty theme archive.php
## display blog taxonomies and categories post list.
/*****************************************************/
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
						<?php 
						if ( is_author() ) : 
							$curauth = (isset($_GET['author_name'])) ? get_user_by('slug', $author_name) : get_userdata(intval($author));
							$display_name = $curauth->display_name;
							$avatar = get_avatar($curauth->ID);
							$author_profile_url = get_author_posts_url($curauth->ID);
							$profile_img = get_the_author_meta( '_wrt_user_avatar',$curauth->ID );
							echo '<div class="author">';
									if(!empty($profile_img)):
										echo '<div class="author-image fl-right"><a href="'. $author_profile_url. '"><img src="'.$profile_img.'" /></a></div>';
									else:
										echo '<div class="author-image fl-right"><a href="'. $author_profile_url. '">'.get_avatar( get_the_author_meta( 'user_email', $curauth->ID ),100 ).'</a></div>';
									endif;
									
									echo '<div class="author-meta">';
									echo '<h6 class="author-name"><a href="'. $author_profile_url. '" class="contributor-link">'. $display_name. '</a></h6>';
								
									echo '<div class="author-website"><a href="'.$curauth->user_url.'">'.$curauth->user_url.'</a></div>';
									
									echo '<p class="author-desc">'.get_the_author_meta( 'description' , $curauth->ID).'</p>';
									echo '</div>';
							echo '</div>';
						
						
						elseif ( is_category() ) : ?>
							<h1 class="site-header-title"><?php echo single_cat_title( '', false ) ?>
								<a title="<?php _e( 'Feed Subscription', 'writee' ); ?>" href="<?php echo get_category_feed_link(get_queried_object()->term_id) ?>"><span class="fa fa-rss"></span></a>
							</h1>
						<?php elseif(is_tag()): $tag_id = get_query_var('tag_id'); ?>
							<h1 class="site-header-title">
								<?php the_archive_title();?>
								<a title="<?php echo esc_html__( 'Feed Subscription', 'writee' ); ?>" href="<?php echo get_term_feed_link(get_queried_object()->term_id, 'post_tag', "rss2") ?>"><span class="ion-social-rss"></span></a>
							</h1>
						<?php else: the_archive_title( '<h1 class="site-header-title">', '</h1>' );?>
							
						<?php endif; ?>
						
						<?php the_archive_description( '<div class="taxonomy-description">', '</div>' ); ?>
					</div>
	
					<?php 
						get_template_part('inc/theme/layouts/'.$layout);
					?>
					
					<?php if ($wp_query->max_num_pages > 1) writee_pagenavi(); ?>
				</div>
				
				<?php 
				if($sidebar_layout == '2cl' || $sidebar_layout == '2cr'): ?>
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