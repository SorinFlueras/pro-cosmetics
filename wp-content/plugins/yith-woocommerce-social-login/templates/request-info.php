<?php
/**
 * Request additional info to login with provider
 *
 * @package YITH WooCommerce Social Login
 * @since   1.0.0
 * @author  Yithemes
 */

login_header(__('Login', 'yith-woocommerce-social-login') );
?>
    <div id="welcome">

        <p>
            <?php _e( "Please, enter your information in the form below to continue", 'yith-woocommerce-social-login' ); ?>.
        </p>
        <?php if( !empty($errors) ):
            foreach( $errors as $error ){
                echo "<p>{$error}</p>";
            }
        endif; ?>
    </div>

    <form name="loginform" id="loginform" action="#" method="post">
        <?php if( $show_user ): ?>
        <p>
            <label for="yith_user_login"><?php _e('Username','yith-woocommerce-social-login') ?><br>
                <input type="text" name="yith_user_login" id="yith_user_login" class="input" value="" size="40"></label>
        </p>
        <?php endif ?>
        <?php if( $show_email ): ?>
        <p>
            <label for="yith_user_email"><?php _e('Email','yith-woocommerce-social-login') ?><br>
                <input type="text" name="yith_user_email" id="yith_user_email" class="input" value="" size="40"></label>
        </p>
        <?php endif ?>

        <p class="submit">
            <input type="submit" name="wp-submit" id="wp-submit" class="button button-primary button-large" value="<?php _e('Continue to Login','yith-woocommerce-social-login') ?>">
        </p>
        <input type="hidden" name="ywsl_social" value="<?php echo $provider ?>">
        <input type="hidden" name="redirect" value="<?php echo $redirect ?>">
    </form>
<?php login_footer('user_login');

