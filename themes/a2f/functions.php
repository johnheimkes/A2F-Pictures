<?php
// Adjusts length of excerpt

//function new_excerpt_length($length) {
//	return 20;
//}
//add_filter('excerpt_length', 'new_excerpt_length');

if ( function_exists ('register_sidebar')) { 
    register_sidebar(); 
}

if (function_exists('add_theme_support')) {
	add_theme_support('menus');
}

add_action( 'init', 'create_recent_works' );
function create_recent_works() {
    register_post_type( 'recent_works',
        array(
            'labels' => array(
                'name' => __( 'Recent Work' ),
                'singular_name' => __( 'Recent Work Page' ),
                'add_new' => __( 'Add New' ),
                'add_new_item' => __( 'Add New Recent Work' ),
                'edit' => __( 'Edit' ),
                'edit_item' => __( 'Edit Recent Work' ),
                'new_item' => __( 'New Recent Work' ),
            ),
            'public' => true,
            'supports' => array(
                    'title',
                    'editor',
                    'thumbnail',
                    'revisions'
                ),
            'has_archive' => false,
            'rewrite' => array('slug' => 'recent-works')
        )
    );
}

function recent_works_short( ){
    return get_template_part_without_echo( 'loops/loop', 'recent-work' );
}
add_shortcode( 'recent-works', 'recent_works_short' );

function get_template_part_without_echo($slug, $name) {
    ob_start();
    get_template_part($slug, $name);
    $content = ob_get_contents();
    ob_end_clean();
    return $content;
}
