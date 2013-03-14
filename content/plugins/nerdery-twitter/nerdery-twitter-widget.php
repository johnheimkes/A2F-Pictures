<?php
/**
 * Twitter Widget
 *
 * @author Jess Green <jgreen@nerdery.com>
 * @category Nerdery_WordPress_Plugins
 * @package Nerdery_Twitter
 * @version $Id$
 * @author Jess Green <jgreen@nerdery.com>
 */
add_action('widgets_init', create_function('', 'register_widget( "Nerdery_Twitter_Widget" );'));

/**
 * Twitter Widget Class
 *
 * @package Nerdery_Twitter
 * @subpackage WP_Widget
 */
class Nerdery_Twitter_Widget extends WP_Widget
{
    /**
     * Transient expiration time
     */
    const TWITTER_TRANSIENT_EXP = 1800; // set transient to expire in 30 minutes

    /**
     * PHP5 constructor function
     */
    public function __construct()
    {
        parent::__construct(
            "Nerdery_Twitter_Widget",
            "Twitter Widget",
            array(
                'description' => __("Standard Twitter widget", NERDERY_TWITTER_DOMAIN),
            )
        );
    }

    /**
     * Handles view loading for widget
     *
     * @see WP_Widget::widget
     */
    public function widget($args, $instance)
    {

        $template_override = locate_template(array('views/widgets/twitter-widget.php'));
        $template_located = $template_override
                            ? $template_override
                            : NERDERY_TWITTER_ABSPATH . '/views/twitter-widget.php';

        $tweets = nerdery_get_tweets($instance, $this->id);

        if ($tweets) {
            include $template_located;
        }


    }

    /**
     * Sanitize and save widget options.
     *
     * @see WP_Widget::update
     */
    public function update($new_instance, $old_instance)
    {
        if (!wp_verify_nonce($new_instance['_nerdery_twitter_widget'], 'nerdery_twitter_widget')) {
            return $old_instance;
        }

        $instance = array();

        $instance['title']    = strip_tags($new_instance['title']);
        $instance['username'] = strip_tags($new_instance['username']);
        $instance['count']    = strip_tags($new_instance['count']);

        return $instance;

    }

    /**
     * Displays widget options form.
     *
     * @see WP_Widget::form
     */
    public function form($instance)
    {
        $title           = "";
        $username        = "";
        $count           = 6;

        if (isset($instance))
            extract($instance);

        include(NERDERY_TWITTER_ABSPATH . '/form/form.widget.php');
    }

    /**
     *
     * @param mixed $field
     * @return string
     */
    private function _is_invalid($field)
    {
        if (empty($field)){
            return ' form-invalid';
        } else {
            return '';
        }
    }

}