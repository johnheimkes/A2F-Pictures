<!DOCTYPE html>
<html <?php language_attributes(); ?>>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	
    <title><?php bloginfo( 'name' ); ?> <?php wp_title(); ?></title>
	
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen" />
    <link rel="shortcut icon" href="<?php bloginfo('template_url'); ?>/images/a2f_favicon.ico" />
	<link rel="apple-touch-icon" href="<?php bloginfo('template_url'); ?>/images/a2f_ipad.jpg" />
	
    <?php wp_head(); ?>
	
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://malsup.github.com/jquery.cycle.all.js"></script>
    <script type="text/javascript" src="<?php bloginfo('template_url') ?>/js/app.js"></script>
  </head>
  <body <?php body_class(); ?>>
    <div id="wrapper">
      <div id="header">
        <h1><a href="<?php bloginfo('url') ?>" class="header-logo">A2F Pictures</a></h1>
		
		<?php wp_nav_menu( array('menu' => 'Header-Main' )); ?>
      </div>