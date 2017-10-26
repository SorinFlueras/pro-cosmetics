<?php

/**
 * The file that defines the core plugin class
 *
 * A class definition that includes attributes and functions used across both the
 * public-facing side of the site and the admin area.
 *
 * @link       http://wpgenie.org
 * @since      1.0.0
 *
 * @package    Woocommerce_onsale_page
 * @subpackage Woocommerce_onsale_page/includes
 */

/**
 * The core plugin class.
 *
 * This is used to define internationalization, admin-specific hooks, and
 * public-facing site hooks.
 *
 * Also maintains the unique identifier of this plugin as well as the current
 * version of the plugin.
 *
 * @since      1.0.0
 * @package    Woocommerce_onsale_page
 * @subpackage Woocommerce_onsale_page/includes
 * @author     Your Name <email@example.com>
 */
class Woocommerce_onsale_page {

	/**
	 * The loader that's responsible for maintaining and registering all hooks that power
	 * the plugin.
	 *
	 * @since    1.0.0
	 * @access   protected
	 * @var      Woocommerce_onsale_page_Loader    $loader    Maintains and registers all hooks for the plugin.
	 */
	protected $loader;

	/**
	 * The unique identifier of this plugin.
	 *
	 * @since    1.0.0
	 * @access   protected
	 * @var      string    $plugin_name    The string used to uniquely identify this plugin.
	 */
	protected $plugin_name;

	/**
	 * The current version of the plugin.
	 *
	 * @since    1.0.0
	 * @access   protected
	 * @var      string    $version    The current version of the plugin.
	 */
	protected $version;

	/**
	 * Define the core functionality of the plugin.
	 *
	 * Set the plugin name and the plugin version that can be used throughout the plugin.
	 * Load the dependencies, define the locale, and set the hooks for the admin area and
	 * the public-facing side of the site.
	 *
	 * @since    1.0.0
	 */
	public function __construct() {

		$this->plugin_name = 'wc_onsale_page';
		$this->version = '1.0.9';

		$this->load_dependencies();
		$this->set_locale();
		$this->define_admin_hooks();
		$this->define_public_hooks();

	}

	/**
	 * Load the required dependencies for this plugin.
	 *
	 * Include the following files that make up the plugin:
	 *
	 * - Woocommerce_onsale_page_Loader. Orchestrates the hooks of the plugin.
	 * - Woocommerce_onsale_page_i18n. Defines internationalization functionality.
	 * - Woocommerce_onsale_page_Admin. Defines all hooks for the admin area.
	 * - Woocommerce_onsale_page_Public. Defines all hooks for the public side of the site.
	 *
	 * Create an instance of the loader which will be used to register the hooks
	 * with WordPress.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function load_dependencies() {

		/**
		 * The class responsible for orchestrating the actions and filters of the
		 * core plugin.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'includes/class-woocommerce-onsale-page-loader.php';

		/**
		 * The class responsible for defining internationalization functionality
		 * of the plugin.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'includes/class-woocommerce-onsale-page-i18n.php';

		/**
		 * The class responsible for defining all actions that occur in the admin area.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'admin/class-woocommerce-onsale-page-admin.php';

		/**
		 * The class responsible for defining all actions that occur in the public-facing
		 * side of the site.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'public/class-woocommerce-onsale-page-public.php';

		include_once plugin_dir_path( dirname( __FILE__ ) ) . 'public/class-wc-onsale-page-widget-layered-nav.php';


		if( !class_exists('Wpgenie_Dashboard')){
			require_once plugin_dir_path( dirname( __FILE__ ) ) . 'admin/class-wpgenie-dashboard.php' ;

			$this->dashboard =  new Wpgenie_Dashboard();			
		}


		$this->loader = new Woocommerce_onsale_page_Loader();

	}

	/**
	 * Define the locale for this plugin for internationalization.
	 *
	 * Uses the Woocommerce_onsale_page_i18n class in order to set the domain and to register the hook
	 * with WordPress.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function set_locale() {

		$plugin_i18n = new Woocommerce_onsale_page_i18n();

		$this->loader->add_action( 'plugins_loaded', $plugin_i18n, 'load_plugin_textdomain' );

	}

	/**
	 * Register all of the hooks related to the admin area functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_admin_hooks() {

		$plugin_admin = new Woocommerce_onsale_page_Admin( $this->get_plugin_name(), $this->get_version() );
		$this->loader->add_filter( 'woocommerce_product_settings', $plugin_admin, 'add_salepage_on_option_page' );

	}

	/**
	 * Register all of the hooks related to the public-facing functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_public_hooks() {

		$plugin_public = new Woocommerce_onsale_page_Public( $this->get_plugin_name(), $this->get_version() );

		$this->loader->add_action( 'pre_get_posts', $plugin_public, 'pre_get_posts',1 );
		$this->loader->add_action( 'woocommerce_product_query', $plugin_public, 'mod_woocommerce_product_query',1 ,2);

		$this->loader->add_filter( 'template_include', $plugin_public, 'template_loader',1 );
		$this->loader->add_filter( 'woocommerce_page_title', $plugin_public, 'woocommerce_page_title',1 );

		$this->loader->add_filter( 'woocommerce_get_breadcrumb', $plugin_public, 'woocommerce_get_breadcrumb',1,2 );
		$this->loader->add_filter( 'pre_get_document_title', $plugin_public, 'change_page_title',10 );

		$this->loader->add_filter( 'wp_nav_menu_objects', $plugin_public, 'nav_menu_item_classes',10 );

		$this->loader->add_filter( 'icl_ls_languages', $plugin_public, 'translate_ls_onsale_url',99 );

		$this->loader->add_filter( 'widgets_init', $plugin_public, 'wc_register_widgets');

		

		
	}

	/**
	 * Run the loader to execute all of the hooks with WordPress.
	 *
	 * @since    1.0.0
	 */
	public function run() {
		$this->loader->run();
	}

	/**
	 * The name of the plugin used to uniquely identify it within the context of
	 * WordPress and to define internationalization functionality.
	 *
	 * @since     1.0.0
	 * @return    string    The name of the plugin.
	 */
	public function get_plugin_name() {
		return $this->plugin_name;
	}

	/**
	 * The reference to the class that orchestrates the hooks with the plugin.
	 *
	 * @since     1.0.0
	 * @return    Woocommerce_onsale_page_Loader    Orchestrates the hooks of the plugin.
	 */
	public function get_loader() {
		return $this->loader;
	}

	/**
	 * Retrieve the version number of the plugin.
	 *
	 * @since     1.0.0
	 * @return    string    The version number of the plugin.
	 */
	public function get_version() {
		return $this->version;
	}


}