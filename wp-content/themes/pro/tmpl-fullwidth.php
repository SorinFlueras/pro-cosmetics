<?php
/**
   Template Name:  Homepage2
 */
 ?>
<?php include_once('header.php'); ?>



<!--=== Content Part ===-->

<div class="container">		

	<div class="row-fluid">
            <ul class="thumbnails">

            <?php if (have_posts()) : ?>
			<?php while (have_posts()) : the_post(); ?>
                <div class="headline"><h3><?php the_title(); ?></h3></div>
                 

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


    </div><!--/row-fluid-->        

</div><!--/container-->		

<!--=== End Content Part ===-->

<?php include_once('footer.php'); ?>