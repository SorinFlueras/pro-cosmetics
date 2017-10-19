<?php include_once('header.php'); ?>


<!--=== Content Part ===-->
<div class="container">	
	
	<!-- Recent Works -->
	<div class="headline"><h3>Ultimele postari</h3></div>
    <ul class="thumbnails">

             <?php query_posts('showposts=4&cat=24'); ?>
            <?php if (have_posts()) : ?>
			<?php while (have_posts()) : the_post(); ?>

                 

                   <li class="span3">

                    <div class="thumbnail-style thumbnail-kenburn">
        
                    	<div class="thumbnail-img">
        
                            <div class="overflow-hidden"><?php the_post_thumbnail('listimage'); ?></div>				
        
                        </div>
        
                        <h3><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a></h3>
        
                        <?php the_excerpt(); ?>
        
                    </div>
        
                </li>
                    

                
 <?php endwhile; ?>
    		<?php endif; ?>

            </ul>
	<!-- //End Recent Works -->
    

</div><!--/container-->		
<!-- End Content Part -->

<?php include_once('footer.php'); ?>