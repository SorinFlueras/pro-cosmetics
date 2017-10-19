<form role="search" method="get" id="searchform" class="search-form" action="<?php echo esc_url( home_url( '/' ) ); ?>">
	<label class="screen-reader-text" for="s">
	<?php echo esc_html__( 'Search for:', 'writee' ); ?>
	</label>
	<input type="text" value="<?php echo get_search_query(); ?>" placeholder="<?php echo esc_html__( 'Search...', 'writee'); ?>" name="s" id="s" class="search-input" />
	<label for="searchsubmit" class="fa fa-search search-submit-icon"></label>
	<input type="submit" id="searchsubmit" value="<?php echo esc_html__( 'Search', 'writee' ); ?>" class="search-submit" />
</form>