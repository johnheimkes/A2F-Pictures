<?php
/**
 * A2f Pictures Theme
 *
 * @category A2f_Pictures_Theme
 * @package A2f_Pictures_Theme
 * @subpackage Header
 * @author John Heimkes IV <john@markupisart.com>
 * @version 1.0
 */
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>

    <title><?php bloginfo('name'); ?><?php wp_title(' - '); ?></title>
    <link rel="pingback" href="<?php bloginfo('pingback_url') ?>" />

    <!-- META DATA -->
    <meta name="viewport" content="width=960" />
    
    <!-- ICONS -->
    <link rel="shortcut icon" type="image/ico" href="<?php echo A2F_THEME_PATH_URL; ?>assets/images/favicon.ico" />

    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    <div class="site-wrapper">
        <header class="mast-header">
            <div class="header">
                <h1>
                    <a href="<?php echo home_url(); ?>" class="logo">A2f Pictures</a>
                </h1>
                
                <?php
                wp_nav_menu(array(
                    'menu'              => 'Primary Nav',
                    'container'         => 'nav',
                    'container_class'   => 'header-nav',
                ));
                ?>
            </div>
        </header>
        
        <div class="mast-content">
            <div class="content">
