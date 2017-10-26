<?php

/**
 * The admin-specific functionality of the plugin.
 *
 * @link       http://wpgenie.org
 * @since      1.0.0
 *
 * @package    Woocommerce_onsale_page
 * @subpackage Woocommerce_onsale_page/admin
 */

/**
 * The admin-specific functionality of the plugin.
 *
 * Defines the plugin name, version, and two examples hooks for how to
 * enqueue the admin-specific stylesheet and JavaScript.
 *
 * @package    Woocommerce_onsale_page
 * @subpackage Woocommerce_onsale_page/admin
 * @author     Your Name <email@example.com>
 */
class Woocommerce_onsale_page_Admin {

	/**
	 * The ID of this plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $plugin_name    The ID of this plugin.
	 */
	private $plugin_name;

	/**
	 * The version of this plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $version    The current version of this plugin.
	 */
	private $version;

	/**
	 * Initialize the class and set its properties.
	 *
	 * @since    1.0.0
	 * @param      string    $plugin_name       The name of this plugin.
	 * @param      string    $version    The version of this plugin.
	 */
	public function __construct( $plugin_name, $version ) {

		$this->plugin_name = $plugin_name;
		$this->version = $version;

	}

	public function add_salepage_on_option_page($settings){


		$onsalepageid = array('title'    => __( 'Onsale Page', 'wc_onsale_page' ),
								
								'id'       => 'woocommerce_onsale_page_id',
								'type'     => 'single_select_page',
								'default'  => '',
								'class'    => 'wc-enhanced-select-nostd',
								'css'      => 'min-width:300px;',
								'desc_tip' => __( 'This sets the onsale page of your shop - this is where your product on sale archive will be.', 'wc_onsale_page' ),
								);
		

		$modifsettings = 	array_slice($settings, 0, 2, true) ;
		array_push($modifsettings,$onsalepageid);			
	
		return array_merge  ($modifsettings ,array_slice($settings, 2, count($settings), true));

	}

}