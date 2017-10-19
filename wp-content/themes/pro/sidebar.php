        <!-- Right Sidebar -->
    	<div class="span3 sidebar">
        
        <div class="headline"><h3>Contul Meu</h3></div>
        <?php

        if ( is_user_logged_in() ) {
            echo '
            <ul class="unstyled">
            <li><a href="http://pro-cosmetics.eu/cos/"><i class="icon-shopping-cart color-green"></i>Cosul meu</a></li>
            <li><a href="http://pro-cosmetics.eu/contul-meu/"><i class="icon-user color-green"></i>Contul meu</a></li>
            <li><a href="http://pro-cosmetics.eu/contul-meu/modifica-contul/"><i class="icon-cog color-green"></i>Modifica contul</a></li>
            <li><a href="http://pro-cosmetics.eu/contul-meu/modifica-adresa/"><i class="icon-edit color-green"></i>Modifica adresa</a></li>
            <li><a href="'. wp_logout_url() .'"><i class="icon-remove color-green"></i>Deconectare</a></li>
            </ul>
            ';
        } else {
            echo '
            <ul class="unstyled">
            <li><a href="http://pro-cosmetics.eu/contul-meu/"><i class="icon-lock color-green"></i>Conectare</a></li>
            <li><a href="http://pro-cosmetics.eu/wp-signup.php"><i class="icon-group color-green"></i>Creare cont</a></li>
            </ul>
            ';
        }

        ?>
        
        <?php dynamic_sidebar( 'Sidebar' ); ?>
        

        </div>
        </div><!--/span3 sidebar-->