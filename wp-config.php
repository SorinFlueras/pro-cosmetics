<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'procosme_wp273');

/** MySQL database username */
define('DB_USER', 'procosme_wp273');

/** MySQL database password */
define('DB_PASSWORD', 'Hp0S)9[22t');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'hjqpgkczm2i8hjfe6y9hw0zkngpo85nslalvl7k41qlc4xj8vhrymesfirhfyxhr');
define('SECURE_AUTH_KEY',  'qg5jpemgj6oem5bg0zenl1yc1sbrxqhp4d1uj45l3h0btlhwir7ljirdceeeyois');
define('LOGGED_IN_KEY',    'lhwrxhwhjaxwsfxvh72xzlwwbwflx9m46wcgph2efxvs9n0h3k4u2y61iyczdbxn');
define('NONCE_KEY',        '87lvqldgnf8fpn3tvfzhpuvw0daiyrqfyugfjs6jm3hdeivpxjrzo1bnq5ozm5l3');
define('AUTH_SALT',        '5u38qx4xxhpgxvmgk11w9lxaw6atc3gypxk09viiyey2sn6d7yvqujy5aycvq63s');
define('SECURE_AUTH_SALT', '58ktec4gkrbqygaeascfuslkxqpo7bvuwoh4yolbwria2jvlywqyog2ru7yigvba');
define('LOGGED_IN_SALT',   'daniejteb59zyg1saxljhg0ahonhybnx9st0dcy0paeaiyu9ipwd39wtzp4gho7n');
define('NONCE_SALT',       'nqjovajeudxg9j9jevytrinolenkrlm1u7yni6pwav4fab0tbpgt1fgrxh47t77i');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wpdo_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
