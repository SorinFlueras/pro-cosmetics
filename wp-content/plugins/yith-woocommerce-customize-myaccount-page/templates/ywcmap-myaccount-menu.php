<?php
/**
 * MY ACCOUNT TEMPLATE MENU
 *
 * @since 1.1.0
 */
if ( ! defined( 'YITH_WCMAP' ) ) {
    exit;
} // Exit if accessed directly

global $woocommerce, $wp, $post;

// TODO gET active endpoint

?>

<div class="user-profile">



</div>

<ul class="myaccount-menu">

    <?php foreach( $endpoints as $endpoint => $options ) {

        if( isset( $options['children'] ) ) {
            /**
             * Print endpoints group
             */
            do_action( 'yith_wcmap_print_endpoints_group', $endpoint, $options );
        }
        else {
            /**
             * Print single endpoint
             */
            do_action('yith_wcmap_print_single_endpoint', $endpoint, $options );
        }
    } ?>

</ul>

<?php if( $avatar ) : ?>
    <div id="yith-wcmap-avatar-form" style="display: none;">
        <h3><?php _e( 'Upload your avatar', 'yith-woocommerce-customize-myaccount-page') ?></h3>
        <form enctype="multipart/form-data" method="post">
            <p>
                <input type="file" name="ywcmap_user_avatar" id="ywcmap_user_avatar" accept="image/*">
            </p>
            <p class="submit">
                <input type="submit" class="button" value="<?php _e( 'Upload', 'yith-woocommerce-customize-myaccount-page' ) ?>">
            </p>
            <input type="hidden" name="action" value="wp_handle_upload">
            <input type="hidden" name="_nonce" value="<?php echo wp_create_nonce('wp_handle_upload') ?>">
        </form>
        <form enctype="multipart/form-data" method="post">
            <p class="submit" style="margin-top: 15px;">
                <input type="submit" class="button" value="<?php _e( 'Reset to defaults', 'yith-woocommerce-customize-myaccount-page' ) ?>">
            </p>
            <input type="hidden" name="action" value="ywcmap_reset_avatar">
        </form>
    </div>
<?php endif;