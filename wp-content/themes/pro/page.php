    <?php include_once('header.php'); ?>


        <!-- Left Sidebar -->

    	<div class="span9">
            
        	<div class="blog margin-bottom-30">
            <?php if (have_posts()) : ?>
			<?php while (have_posts()) : the_post(); ?>
            	<div class="headline"><h2><?php the_title(); ?></h2></div>

                <div class="blog-img"><?php the_post_thumbnail('postimage'); ?></div>

                <div style="clear: both;"></div>
                <div class="postcontent">
						<?php the_content('Continuare...'); ?>
					</div>
            <aside class="sidebar right last">

         
            
            <?php endwhile; ?>
    		<?php endif; ?>


            </div><!--/blog-->


        </div><!--/span9-->



        <?php include_once('sidebar.php'); ?>


<?php include_once('footer.php'); ?>