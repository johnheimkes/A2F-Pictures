<!DOCTYPE html>
<html <?php language_attributes(); ?>>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title><?php bloginfo( 'name' ); ?> <?php wp_title(); ?></title>
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen" />
    <link rel="shortcut icon" href="<?php bloginfo('template_url'); ?>/images/favicon.ico" />
    <?php wp_head(); ?>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script
    <script type="text/javascript" src="<?php bloginfo('template_url') ?>/js/app.js"></script>
  </head>
  <body <?php body_class(); ?>>
    <div id="wrapper">
      <div id="header">
        <h1><a href="<?php bloginfo('url') ?>" class="header-logo">A2F Pictures</a></h1>
        <ul class="nav">
          <li class="nav-item"><a href="<?php bloginfo('url') ?>" class="nav-link <?php if ( is_home() ) { echo 'active-page'; } ?>">Home</a></li>
          <li class="nav-item"><a href="<?php bloginfo('url') ?>/portfolio" class="nav-link <?php if ( is_page(array('portfolio', 'wedding', 'commercial', 'music-video', 'speciality')) ) { echo 'active-page'; } ?>">Portfolio</a></li>
          <li class="nav-item"><a href="<?php bloginfo('url') ?>/quote" class="nav-link <?php if ( is_page('quote') ) { echo 'active-page'; } ?>">Quote</a></li>
          <li class="nav-item"><a href="<?php bloginfo('url') ?>/contact" class="nav-link <?php if ( is_page('contact') ) { echo 'active-page'; } ?>">Contact</a></li>
        </ul>
        
        <!-- <div id="nav">
          <?php wp_nav_menu( array( 'theme_location' => 'header-menu' ) ); ?>
        </div> -->
      </div>