<?php
/**
 * Nerdery Theme
 *
 * @package Functions
 * @author     Jess Green <jgreen@nerdery.com>
 * @author     Alison Barrett <abarrett@nerdery.com>
 * @version    $Id$
 */

add_action('after_setup_theme', array('NERD_Theme', 'after_setup_theme'));
/**
 * Constants
 */
define('DISALLOW_FILE_EDIT', true); // remove file editor
define('NERDERY_THEME_PATH_URL', get_template_directory_uri() . '/');
define('NERDERY_THEME_PATH', get_template_directory() . '/');
define('NERDERY_THEME_VER', '2.1');
define('NERDERY_TEXT_DOMAIN', basename(dirname(__FILE__)));

/**
 * Theme init class
 *
 * @package NERD_Theme
 * @author Jess Green <jgreen@nerdery.com>
 */
class NERD_Theme
{
    const SHORT_DATE = 'n.d.Y';
    const LONG_DATE  = 'l F jS Y';

    /**
     * Do theme setup
     * Runs on after_setup_theme hook
     *
     * see after_setup_theme {@link http://goo.gl/hkECf}
     *
     * @return void
     */
    public static function after_setup_theme()
    {
        self::_includes();
        self::_widgets();

        /**
         * Theme Supports
         */
        add_theme_support('post-thumbnails');
        add_theme_support('custom-background');
        add_theme_support('custom-header');

        /**
         * Actions and filters
         */
        add_action('widgets_init', array('NERD_Theme', 'widget_init'));
        add_action('wp_enqueue_scripts', array('NERD_Theme', 'enqueue_scripts'));
        add_action('wp_enqueue_scripts', array('NERD_Theme', 'enqueue_styles'));

        // fix Home menu item
        add_filter('wp_nav_menu_objects', array('NERD_Theme', 'home_menu_sandbox_fix') );
    }

    /**
     * Add all includes here
     *
     * @return void
     */
    private static function _includes()
    {
        /**
         * Includes
         */
        include_once 'modules/register-post-types.php';
        include_once 'modules/register-taxonomies.php';
        include_once 'modules/register-menus.php';
        include_once 'modules/register-sidebars.php';
        include_once 'modules/gallery.php';
    }

    /**
     * Includes for widget class files
     *
     * @return void
     */
    private static function _widgets()
    {
        /**
         * Widgets
         */
        include_once 'widgets/skeleton-widget.php';
    }

    /**
     * Init Theme-specific Widgets
     * see Widgets_API {@link http://goo.gl/B2H6y}
     *
     */
    public static function widget_init()
    {
        // register all the widgets
        register_widget('Nerdery_Skeleton_Widget');
    }

    /**
     * Enqueue scripts
     *
     * @return void
     */
    public static function enqueue_scripts()
    {
        // Global script
        wp_register_script(
            'nerdery-global',
            NERDERY_THEME_PATH_URL . 'assets/scripts/global.js',
            array('jquery'),
            NERDERY_THEME_VER,
            true
        );

        wp_enqueue_script('nerdery-global');

        // Comment reply script for threaded comments (registered in WP core)
        if (is_singular() && get_option('thread_comments')) {
            wp_enqueue_script('comment-reply');
        }

    }

    /**
     * Register styles
     *
     * @global WP_Styles $wp_styles
     */
    public static function enqueue_styles()
    {
        global $wp_styles;

        // Primary Screen Stylesheet
        wp_register_style(
            'nerdery-screen',
            NERDERY_THEME_PATH_URL . 'assets/styles/screen.css',
            null,
            NERDERY_THEME_VER,
            'screen, projection'
        );

        // WYSIWYG Stylesheet
        wp_register_style(
            'nerdery-wysiwyg',
            NERDERY_THEME_PATH_URL . '/wysiwyg.css',
            array('nerdery-screen'),
            NERDERY_THEME_VER,
            'screen, projection'
        );

        // IE 9 Stylesheet
        wp_register_style(
            'nerdery-ie9',
            NERDERY_THEME_PATH_URL . 'assets/styles/ie9.css',
            array('nerdery-screen'),
            NERDERY_THEME_VER,
            'screen, projection'
        );

        // IE 8 Stylesheet
        wp_register_style(
            'nerdery-ie8',
            NERDERY_THEME_PATH_URL . 'assets/styles/ie8.css',
            array('nerdery-screen'),
            NERDERY_THEME_VER,
            'screen, projection'
        );

        // Repeat with Media Query stylesheets
        wp_register_style(
            'nerdery-screen-small',
            NERDERY_THEME_PATH_URL . 'assets/styles/screen_small.css',
            array('nerdery-screen'),
            NERDERY_THEME_VER,
            'screen and (min-width: 480px)'
        );

        wp_register_style(
            'nerdery-screen-medium',
            NERDERY_THEME_PATH_URL . 'assets/styles/screen_medium.css',
            array('nerdery-screen'),
            NERDERY_THEME_VER,
            'screen and (min-width: 768px)'
        );

        wp_register_style(
            'nerdery-screen-large',
            NERDERY_THEME_PATH_URL . 'assets/styles/screen_large.css',
            array('nerdery-screen'),
            NERDERY_THEME_VER,
            'screen and (min-width: 992px)'
        );

        wp_register_style(
            'nerdery-screen-huge',
            NERDERY_THEME_PATH_URL . 'assets/styles/screen_large.css',
            array('nerdery-screen'),
            NERDERY_THEME_VER,
            'screen and (min-width: 1382px)'
        );

        // Conditional statements for IE stylesheets
        $wp_styles->add_data('nerdery-ie9', 'conditional', 'lte IE 9');
        $wp_styles->add_data('nerdery-ie8', 'conditional', 'lte IE 8');

        // Queue the stylesheets. Note that because nerdery-screen was registered
        // with nerdery-wysiwyg as a dependency, it does not need to be enqueued here.
        wp_enqueue_style('nerdery-wysiwyg');
        wp_enqueue_style('nerdery-screen-small');
        wp_enqueue_style('nerdery-screen-medium');
        wp_enqueue_style('nerdery-screen-large');
        wp_enqueue_style('nerdery-screen-huge');
        wp_enqueue_style('nerdery-ie9');
        wp_enqueue_style('nerdery-ie8');

    }

    /**
     * Home menu item sandbox fix. Sets the Home menu item to
     * developer's sandbox instead of the DB value.
     *
     * @param array $menu_items Array of menu items
     * @return array
     */
    public static function home_menu_sandbox_fix($menu_items)
    {
        foreach ($menu_items as $menu_item) {
            if (isset($menu_item->title) && $menu_item->title == 'Home') {
                $menu_item->url = home_url('/');
                break; // no point in continuing loop, is there?
            }
        }

        return $menu_items;
    }
}