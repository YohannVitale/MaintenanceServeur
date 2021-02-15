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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */
define('AUTH_KEY',         'syNW`,s:=90L_1dI #${@~6i34pr-VB=Y<?`~k{_a]T8sx2hE+C/Px7CKzm]vJ}z');
define('SECURE_AUTH_KEY',  '3j?3bUY+!J^pt,M;^2}-~w!8uH{pn`iu?%/K]LLZB|q!{[p@FZ)4&,B MWd*g-gh');
define('LOGGED_IN_KEY',    '^x}|r$6@g-U n*~rN]qBD)c(95a9-oJftc%v}5=JiR6oR#44boNZ:n|FSxu[0IDW');
define('NONCE_KEY',        'EH*e;N7^9j`]#Q|P1oqImf=_N7vS{z#KiIAS5f5MU4K*O-<] D~J<f-r|tf^kr8/');
define('AUTH_SALT',        '~,*|kN%402&.n2b2w%({/w11[i06WZj+6D-z|LdKijR=Ip/R8-+`|JoiS.L|4|s-');
define('SECURE_AUTH_SALT', 'JX`mw-W[ &1I=BU=38UB$|XA[)i<]L,Gs/|WMh?ga]u(0Ys2`NfV%XDo1L]|bCkY');
define('LOGGED_IN_SALT',   'Q%9zJ{pTUJdPmn!tE @|+PEFlD<g`F|9::]H?:]hPy8AEm+N+LVu7_9rt`E=6[:.');
define('NONCE_SALT',       '^RFh6/YMYz,pGouO+el*+~)t_|dEc3<:Ei##|qWVowx{@N}264XE=(t!V^-rU_f7');

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'yohann59' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

define('FS_METHOD', 'direct');
/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'put your unique phrase here' );
define( 'SECURE_AUTH_KEY',  'put your unique phrase here' );
define( 'LOGGED_IN_KEY',    'put your unique phrase here' );
define( 'NONCE_KEY',        'put your unique phrase here' );
define( 'AUTH_SALT',        'put your unique phrase here' );
define( 'SECURE_AUTH_SALT', 'put your unique phrase here' );
define( 'LOGGED_IN_SALT',   'put your unique phrase here' );
define( 'NONCE_SALT',       'put your unique phrase here' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
