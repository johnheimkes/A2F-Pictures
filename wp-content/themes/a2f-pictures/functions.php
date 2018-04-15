<?php
/**
 * A2F Pictures functions and definitions.
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package A2F_Pictures
 */

if ( ! function_exists( 'a2f_pictures_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function a2f_pictures_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on A2F Pictures, use a find and replace
	 * to change 'a2f-pictures' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'a2f-pictures', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary', 'a2f-pictures' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 * See https://developer.wordpress.org/themes/functionality/post-formats/
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
	) );

	// Set up the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'a2f_pictures_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) );
}
endif;
add_action( 'after_setup_theme', 'a2f_pictures_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function a2f_pictures_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'a2f_pictures_content_width', 640 );
}
add_action( 'after_setup_theme', 'a2f_pictures_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function a2f_pictures_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'a2f-pictures' ),
		'id'            => 'sidebar-1',
		'description'   => '',
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'a2f_pictures_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function a2f_pictures_scripts() {
	wp_enqueue_style( 'a2f-pictures-style', get_stylesheet_uri() );

	/** Enqueue Font-awesome */
	wp_enqueue_style( 'a2f-pictures-font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css' );

	/** Enqueue the Google Font */
	wp_enqueue_style( 'a2f-pictures-font-montserrat', '//fonts.googleapis.com/css?family=Istok+Web:400,700|Roboto:300,400,900,700' );

	wp_enqueue_script( 'a2f-pictures-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'a2f-pictures-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );


	/** Enqueue Slick JS. */
	wp_enqueue_script( 'a2f-pictures-slick-js', get_template_directory_uri() . '/js/slick/slick.min.js', array('jquery'), '1.5.9', true );
	wp_enqueue_style( 'a2f-pictures-slick-css', get_stylesheet_directory_uri() . '/js/slick/slick-theme.css' );
	wp_enqueue_style( 'a2f-pictures-slicktheme-css', get_stylesheet_directory_uri() . '/js/slick/slick.css' );

	/** Enqueue Custom JS. */
	wp_enqueue_script( 'a2f-pictures-theme-js', get_template_directory_uri() . '/js/a2ffeatures.js', array('jquery'), '1.1.1', true );

	/** Enqueue the Animate.Css. */
	wp_enqueue_style( 'a2f-pictures-animate', get_stylesheet_directory_uri() . '/css/animate.css' );

	/** Enqueue the Theme's Custom stylesheet. */
	wp_enqueue_style( 'a2f-pictures-custom', get_stylesheet_directory_uri() . '/css/custom.css' );

	/** Custom Animated Logo stylesheet. */
	wp_enqueue_style( 'a2f-pictures-logo', get_stylesheet_directory_uri() . '/css/logo.css' );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'a2f_pictures_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';

/**
 * Add Custom Size.
 */
add_image_size( 'movie-full', 1920, 1080, true );
add_image_size( 'movie-thumb', 250, 200, true );

function create_director_post_types() {
	register_post_type( 'director',
        array(
            'labels'            => array(
                'name'               => __( 'Directors', 'a2f-pictures' ),
                'singular_name'      => __( 'Director', 'a2f-pictures' ),
                'add_new'            => __( 'Add New Director', 'a2f-pictures' ),
                'add_new_item'       => __( 'Add New Director', 'a2f-pictures' ),
                'edit'               => __( 'Edit', 'a2f-pictures' ),
                'edit_item'          => __( 'Edit Director', 'a2f-pictures' ),
                'new_item'           => __( 'New Director', 'a2f-pictures' ),
                'view'               => __( 'View Director', 'a2f-pictures' ),
                'view_item'          => __( 'View Director', 'a2f-pictures' ),
                'search_items'       => __( 'Search Directors', 'a2f-pictures' ),
                'not_found'          => __( 'No Director found', 'a2f-pictures' ),
                'not_found_in_trash' => __( 'No Director found in Trash', 'a2f-pictures' ),
                'parent'             => __( 'Parent Director', 'a2f-pictures' ),
            ),
            'show_in_menu'      => true,
            'show_in_nav_menus' => true,
            'menu_icon'         => 'dashicons-groups',
            'public'            => true,
            'rewrite'           => array('slug' => 'directors'), //  Change this to change the url of your "portfolio"... remember to update "Permalinks"
            'supports'          => array(
                'title',
                'editor',
                'thumbnail',
                'revisions',
                'post-formats'
            ),
        )
	);
}
add_action( 'init', 'create_director_post_types' );

function create_project_post_types() {
	register_post_type( 'project',
	                    array(
		                    'labels'            => array(
			                    'name'               => __( 'Projects', 'a2f-pictures' ),
			                    'singular_name'      => __( 'Project', 'a2f-pictures' ),
			                    'add_new'            => __( 'Add New Project', 'a2f-pictures' ),
			                    'add_new_item'       => __( 'Add New Project', 'a2f-pictures' ),
			                    'edit'               => __( 'Edit', 'a2f-pictures' ),
			                    'edit_item'          => __( 'Edit Project', 'a2f-pictures' ),
			                    'new_item'           => __( 'New Project', 'a2f-pictures' ),
			                    'view'               => __( 'View Project', 'a2f-pictures' ),
			                    'view_item'          => __( 'View Project', 'a2f-pictures' ),
			                    'search_items'       => __( 'Search Projects', 'a2f-pictures' ),
			                    'not_found'          => __( 'No Project found', 'a2f-pictures' ),
			                    'not_found_in_trash' => __( 'No Project found in Trash', 'a2f-pictures' ),
			                    'parent'             => __( 'Parent Project', 'a2f-pictures' ),
		                    ),
		                    'has_archive'       => false,
		                    'publicly_queryable'=> false,
		                    'show_in_menu'      => true,
		                    'show_in_nav_menus' => true,
		                    'menu_icon'         => 'dashicons-format-video',
		                    'public'            => true,
		                    'rewrite'           => array('slug' => 'projects'), //  Change this to change the url of your "portfolio"... remember to update "Permalinks"
		                    'supports'          => array(
			                    'title',
			                    'editor',
			                    'thumbnail',
			                    'revisions',
			                    'post-formats'
		                    ),
	                    )
	);
}
add_action( 'init', 'create_project_post_types' );



if( function_exists('acf_add_options_page') ) {

	acf_add_options_page(array(
         'page_title' 	=> 'A2F Theme Options',
         'menu_title'	=> 'A2F Options',
         'menu_slug' 	=> 'a2f-theme-options',
         'capability'	=> 'edit_posts',
         'redirect'		=> false
     ));

	acf_add_options_sub_page(array(
         'page_title' 	=> 'Display Projects On Pages',
         'menu_title'	=> 'Projects Module',
         'parent_slug'	=> 'a2f-theme-options',
     ));

	acf_add_options_sub_page(array(
         'page_title' 	=> 'Contact Information',
         'menu_title'	=> 'Contact Info',
         'parent_slug'	=> 'a2f-theme-options',
     ));

}
