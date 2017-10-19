<?php
/*****************************************/
## common sidebar page
/*****************************************/
if ( ! is_active_sidebar( 'primary-sidebar' ) ) {
	return;
}
dynamic_sidebar('primary-sidebar'); 

?>