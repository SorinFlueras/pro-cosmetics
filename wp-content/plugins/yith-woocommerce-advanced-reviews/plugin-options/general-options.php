<?php
/**
 * This file belongs to the YIT Plugin Framework.
 *
 * This source file is subject to the GNU GENERAL PUBLIC LICENSE (GPL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
} // Exit if accessed directly

global $YWAR_AdvancedReview;

$general_options = array(

	'general' => array(

		'section_general_settings'          => array(
			'name' => __( 'General settings', 'yith-woocommerce-advanced-reviews' ),
			'type' => 'title',
			'id'   => 'ywar_section_general'
		),
		'review_settings_enable_title'      => array(
			'name'    => __( 'Show title', 'yith-woocommerce-advanced-reviews' ),
			'type'    => 'checkbox',
			'desc'    => __( 'Add a title field in the reviews.', 'yith-woocommerce-advanced-reviews' ),
			'id'      => 'ywar_enable_review_title',
			'default' => 'yes'
		),
		'review_settings_enable_attachment' => array(
			'name'    => __( 'Show attachments', 'yith-woocommerce-advanced-reviews' ),
			'type'    => 'checkbox',
			'desc'    => __( 'Add an attachment section in the reviews.', 'yith-woocommerce-advanced-reviews' ),
			'id'      => 'ywar_enable_attachments',
			'default' => 'yes'
		),
		'review_settings_attachment_limit'  => array(
			'name'    => __( 'Multiple attachment limit', 'yith-woocommerce-advanced-reviews' ),
			'type'    => 'number',
			'desc'    => __( 'Set the maximum number of attachments that can be selected (0 = no limit).', 'yith-woocommerce-advanced-reviews' ),
			'id'      => 'ywar_max_attachments',
			'default' => '0'
		),
		'review_settings_import'      => array(
			'name'    => __( 'Previous reviews', 'yith-woocommerce-advanced-reviews' ),
			'type'    => 'ywar_import_previous_reviews',
			'id'      => 'ywar_import_review',
			'default' => 'yes'
		),
		'section_general_settings_end'      => array(
			'type' => 'sectionend',
			'id'   => 'ywar_section_general_end'
		)
	)
);

return $general_options;
