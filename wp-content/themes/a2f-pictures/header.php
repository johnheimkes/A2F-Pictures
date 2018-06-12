<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package A2F_Pictures
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#main"><?php esc_html_e( 'Skip to content', 'a2f-pictures' ); ?></a>
	<div class="particle-wrap"></div>
	<header id="masthead" class="site-header" role="banner">
		<div class="wrap">
			<h1 class="site-title">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
					<?php include_once 'logo/logo.php'?>
				</a>
			</h1>

			<nav id="site-navigation" class="main-navigation" role="navigation">
				<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'primary-menu' ) ); ?>
            </nav><!-- #site-navigation -->
		</div>
	</header><!-- #masthead -->
	<div class="header-sub-nav subnav-wraps">
		<div class="wrap d-nav">
			<?php wp_nav_menu( array( 'menu' => 'Directors Nav', 'container_class' => 'director-nav' ) ); ?>
		</div>
	</div>
    <div class="header-sub-nav-2 subnav-wraps">
        <div class="wrap c-nav">
			<?php wp_nav_menu( array( 'menu' => 'Cat Nav', 'container_class' => 'cat-nav' ) ); ?>
        </div>
    </div>

	<div id="content" class="site-content">
