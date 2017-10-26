<?php
/**
 * Dashboard widgets
 * 
 * @package WordPress
 *
 * This source file is subject to the GNU GENERAL PUBLIC LICENSE (GPL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 * 
 */

/**
 * Admin dashboard management
 * 
 * @since 1.0.0
 * 
 */
class Wpgenie_Dashboard {
	/**
	 * Products URL
	 * 
	 * @var string
	 * @access protected
	 * @since 1.0.0
         * 
	 */
	protected $_productsFeed = 'http://wpgenie.org/tag/dashboard/feed/';
    
	/**
	 * Constructor
         * 
	 */
	public function __construct() {
		add_action( 'wp_dashboard_setup', array($this, 'dashboard_widget_setup' ) );
	}
	
	/**
	 * Init
	 * 
	 */
	public function init() {
		
	}
	
	/**
	 * Dashboard widget setup
	 * 
	 * @return void
	 * @since 1.0.0
	 * @access public
         * 
	 */
	public function dashboard_widget_setup() {
            
		global $wp_meta_boxes;
		
	    wp_add_dashboard_widget( 'wpgenie_dashboard_products_news', __( 'wpgenie.org - Our latest themes and plugins' , 'wc_lottery' ), array($this, 'dashboard_products_news') );

		$widgets_on_side = array(
	        'wpgenie_dashboard_products_news',
	    );
		
	    foreach( $widgets_on_side as $meta ) {
	        $temp = $wp_meta_boxes['dashboard']['normal']['core'][$meta];
	        unset($wp_meta_boxes['dashboard']['normal']['core'][$meta]);
	        $wp_meta_boxes['dashboard']['side']['core'][$meta] = $temp;
	    }
	}	
	
	/**
	 * Product news widget
	 * 
	 * @return void
	 * @since 1.0.0
	 * @access public
	 * 
	 */
	public function dashboard_products_news() {
            $args = array( 'show_author' => 1, 'show_date' => 1, 'show_summary' => 0, 'items'=>10 );
            wp_widget_rss_output( $this->_productsFeed, $args );
	}	
}