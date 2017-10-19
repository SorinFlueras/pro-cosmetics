<?php 
/*************************************************************/
## Theme header style . It's header style, part of the theme.
/*************************************************************/

?>
	<header id="site-header" class="site-header">
		<div class="site-header-top">
			<div class="site-container">
				<div class="site-row">
					
					<div class="site-header-top-left site-column-9">
					
						<?php if ( has_nav_menu( 'primary' ) ) : ?>
						<nav class="primary-navigation" id="primary-navigation">
							
							<?php 
							$writtyNav = array(
								'theme_location'  => 'primary',
								'menu'            => '',
								'container'       => false,
								'container_class' => '',
								'container_id'    => '',
								'menu_class'      => '',
								'menu_id'         => '',
								'echo'            => true,
								'fallback_cb'     => '',
								'before'          => '',
								'after'           => '',
								'link_before'     => '',
								'link_after'      => '',
								'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
								'depth'           => 0,
								
							); 
							
							wp_nav_menu($writtyNav);
							
							?>
						</nav>
						<a href="<?php echo esc_url( home_url() ) ; ?>" class="mobile-navigation-toggle"></a>
						<?php endif ?>
					</div>
					
					<?php writee_get_social(); ?>
				</div>
			</div>
		</div>
		
		<div class="site-header-bottom">
			<div class="site-container">
				<div class="site-row">
					<div class="site-header-middle-center clearfix" style="position:relative;">
						<?php
							$writee_header_text = esc_attr(get_theme_mod('header_text'));
							if ($writee_header_text): ?>
							<?php if(!is_single()): echo '<h1 class="site-logo">'; else: echo '<h2 class="site-logo">'; endif;  ?>
							<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a>
							<?php if(!is_single()): echo '</h1>'; else: echo '</h2>'; endif;  ?>
							
						<?php 
							elseif(has_custom_logo()): 
						?>
						
							<?php if(!is_single()): echo '<h1 class="site-logo">'; else: echo '<h2 class="site-logo">'; endif;  ?>
							<?php the_custom_logo(); ?>
							<?php if(!is_single()): echo '</h1>'; else: echo '</h2>'; endif;  ?>
							
						<?php
							else:
						?>
						
							<?php if(!is_single()): echo '<h1>'; else: echo '<h2>'; endif;  ?>
							<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a>
							<?php if(!is_single()): echo '</h1>'; else: echo '</h2>'; endif;  ?>
							<p class="tagline"><?php bloginfo( 'description' ); ?></p>

						<?php endif;  ?>
						
					
						<?php if($writee_header_text): ?>
							<p class="tagline"><?php bloginfo( 'description' ); ?></p>
						<?php endif; ?>
						
						<a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="mobile-navigation-toggle"></a>
					</div>
				</div>
			</div>
		</div>
    </header><!-- / header -->