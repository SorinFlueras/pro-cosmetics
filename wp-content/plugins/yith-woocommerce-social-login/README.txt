=== YITH WooCommerce Social Login ===

Contributors: yithemes
Tags: social login, login, social provider, social authentication, authentication, connect with social, woocommerce connect, facebook, google, register, social networks, twitter
Requires at least: 4.0
Tested up to: 4.7.3
Stable tag: 1.2.0
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

YITH WooCommerce Social login is a plugin that allows you to login to your e-commerce site through your Facebook or Twitter or Google account.

== Description ==

YITH WooCommerce Social Login, a plugin that allows your potential customers to access your e-commerce site through their Facebook, Twitter or Google+ account.
A simple action, that yet makes your life and your shop management much easier: your users feel more comfortable in your site, login is just a click far and their propensity
to purchase becomes much higher. Research prove that three quarters of users prefer social login to registration forms and this increases conversion rates and therefore also sales.

**Features:**

Login buttons are automatically added in the following pages:

* "My Account" page
* Checkout page
* Wordpress Login

From option panel, you can change the text of the labels displayed above login buttons and the text in checkout page.

Please, read the the **[official plugin documentation](http://yithemes.com/docs-plugins/yith-woocommerce-social-login/)** to know all plugin features.

== Installation ==
Important: First of all, you have to download and activate WooCommerce plugin, which is mandatory for YITH WooCommerce Social Login to be working.

1. Unzip the downloaded zip file.
2. Upload the plugin folder into the `wp-content/plugins/` directory of your WordPress site.
3. Activate `YITH WooCommerce Social Login` from Plugins page.


= Configuration =
YITH WooCommerce Social Login will add a new tab called "Social Login" in "YIT Plugins" menu item. There, you will find all Yithemes plugins with quick access to plugin setting page.

== Frequently Asked Questions ==

= I would like to allow only Facebook login, what should I do?  =
Go to Yit Plugins->Social Login->Settings: there you can enable only Facebook as Social Network available for login.

= What are the main changes in plugin translation? =
Recently YITH WooCommerce Social Login has been selected to be included in the "translate.wordpress.org" translate programme.
In order to import correctly the plugin strings in the new system, we had to change the text domain form 'ywsl' to 'yith-woocommerce-social-login'.
Once the plugin will be imported in the translate.wordpress.org system, the translations of other languages will be downloaded directly from WordPress, without using any .po and .mo files. Moreover, users will be able to participate in a more direct way to plugin translations, suggesting texts in their languages in the dedicated tab on translate.wordpress.org.
During this transition step, .po and .mo files will be used as always, but in order to be recognized by WordPress, they will need to have a new nomenclature, renaming them in:

* yith-woocommerce-social-login-[WORDPRESS LOCALE].po
* yith-woocommerce-social-login-[WORDPRESS LOCALE].mo

== Screenshots ==

1. Setting Options
2. YITH WooCommerce Social Login in "My Account" page
3. YITH WooCommerce Social Login in Checkout page
4. YITH WooCommerce Social Login in WordPress Login


== Changelog ==
= 1.2.0 - Released on Mar 31, 2017 =
* New: Support to WooCommerce 3.0 RC 2
* Update: Plugin Framework

= 1.1.2 - Released on Feb 16, 2017 =
* Fix: Issue when are called functions include/require in hybridauth library
* Update: Plugin Framework

= 1.1.1 - Released on Dec 28, 2016 =
* Added: Action to send email to customer after the registration
* Updated: Hybrid Library 2.8.2


= 1.1.0 =
* Tweak: Clear the session when a user logged out

= 1.0.9 - Released on Dec 14, 2015 =
* Added: Support to Wordpress 4.4
* Fixed: Catch the Exceptions when the login with provider is cancelled
* Updated: Plugin Core Framework

= 1.0.8 - Released on Dec 07, 2015 =
* Fixed: YIT panel script not enqueue in admin

= 1.0.7 - Released on Dec 04, 2015 =
* Added: Swedish translation
* Updated: Hybrid Library 2.6.0
* Updated: Changed Text Domain from 'ywsl' to 'yith-woocommerce-social-login'

= 1.0.6 - Released on Sep 14, 2015 =
* Fixed: Template social buttons
* Fixed: Removed "read_stream" Facebook scope
* Updated: Plugin Core Framework

= 1.0.5 - Released on Aug 12, 2015 =
* Added: Support to WooCommerce 2.4.2
* Updated: Plugin Core Framework

= 1.0.4 - Released on Jun 19, 2015 =
* Fixed: Security issues

= 1.0.3 - Released on May 14, 2015 =
* Fixed: Refeal link

= 1.0.2 - Released on May 12, 2015 =
* Fixed: Removed "read_friendlists" scope

= 1.0.1 - Released on Apr 24, 2015 =
* Added: Wordpress 4.2 compatibility
* Fixed: Wp security issue

= 1.0.0 - Released on Mar 12, 2015 =
Initial release

== Suggestions ==
If you have any suggestions concerning how to improve YITH WooCommerce Social Login, you can [write to us](mailto:plugins@yithemes.com "Your Inspiration Themes"), so that we can improve YITH WooCommerce Social Login.

== Upgrade notice ==
= 1.0.3 =
* Fixed: Refeal link

= 1.0.2 =
* Fixed: Removed "read_friendlists" scope

= 1.0.1 =
* Added: Wordpress 4.2 compatibility
* Fixed: Wp security issue

= 1.0.0 =
Initial release