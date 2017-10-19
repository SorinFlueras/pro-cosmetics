<?php include_once('header.php'); ?>
<!--=== Content Part ===-->
<div class="container">		
	<div class="row-fluid">
        <!-- Left Sidebar -->
    	<div class="span9">       
        	<div class="blog margin-bottom-30">
            <?php woocommerce_content(); ?>
            </div><!--/blog-->
        </div><!--/span9-->
        <?php include_once('sidebar.php'); ?>
    </div><!--/row-fluid-->        
</div><!--/container-->		
<!--=== End Content Part ===-->
<?php include_once('footer.php'); ?>