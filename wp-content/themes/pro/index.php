<?php include_once('header.php'); ?>


<!--=== Content Part ===-->
<div class="container">	
	<img src="https://pro-cosmetics.eu/wp-content/uploads/2017/11/bara.png" alt="">
	<!-- Recent Works -->
	<div class="headline"><h3>Ultimele produse adaugate</h3></div>
    
    <?php

echo do_shortcode('[recent_products  per_page="3" columns="4" orderby="date" order="desc"]');

?>
<div class="headline"><h3>Cele mai cumparate produse</h3></div>
    
    <?php

echo do_shortcode('[best_selling_products  per_page="3" columns="4" orderby="date" order="desc"]');

?>
    
    	<div class="headline"><h3>Ultimele noutati</h3></div>
    <ul class="thumbnails">

             <?php query_posts('showposts=4&cat=1'); ?>
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