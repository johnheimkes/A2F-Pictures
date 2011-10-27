<?php
// Adjusts length of excerpt

//function new_excerpt_length($length) {
//	return 20;
//}
//add_filter('excerpt_length', 'new_excerpt_length');

function register_my_menus() {
  register_nav_menus(
    array('header-menu' => __( 'Header Menu' ) )
  );
}

add_action( 'init', 'register_my_menus' );