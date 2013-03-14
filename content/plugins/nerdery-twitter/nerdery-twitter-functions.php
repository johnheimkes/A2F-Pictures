<?php
/**
 * Default WordPress Twitter Plugin
 *
 * @category Nerdery_WordPress_Plugins
 * @package Nerdery_Twitter
 * @version $Id$
 * @author Jess Green <jgreen@nerdery.com>
 */
add_shortcode('nerdery_twitter_feed', 'do_twitter_feed');
/**
 * Pull in Twitter feed
 *
 * @return void
 */
function do_twitter_feed($args = array())
{
    $templates = apply_filters(
        'nerdery_twitter_templates',
        array('views/twitter/twitter-feed.php')
    );

    $template_override = locate_template($templates);
    $template_located = $template_override ? $template_override
                        : NERDERY_TWITTER_ABSPATH . '/views/twitter-feed.php';

    $tweets = nerdery_get_tweets($args);

    if ($tweets)
        include $template_located;
}

/**
 * Retrieves JSON from Twitter.
 *
 * @param array $args Arguments
 * @return boolean|string False on failure. JSON string on success.
 */
function nerdery_get_tweets($args = array(), $widget_instance = false)
{
    $options = Nerdery_Twitter_Bootstrap::get_options();

    $r = wp_parse_args($args, $options);
    $usr = wp_parse_args($args, $options['standard']);

    if ((empty($usr['username'])
        || empty($r['twitter_oauth']['consumer_key'])
            || empty($r['twitter_oauth']['consumer_secret'])
                || empty($r['twitter_oauth']['access_token'])
                    || empty($r['twitter_oauth']['access_token_secret']))) {

        return false;
    }

    $count      = intval(nerdery_get_value($usr['count'], 5));
    $username   = esc_attr($usr['username']);
    $cache_time = intval(nerdery_get_value($usr['cache_time'], 1800));

    $consumer_key    = esc_attr(nerdery_get_value($r['twitter_oauth']['consumer_key'], false));
    $consumer_secret = esc_attr(nerdery_get_value($r['twitter_oauth']['consumer_secret'], false));
    $access_token    = esc_attr(nerdery_get_value($r['twitter_oauth']['access_token'], false));
    $access_token_secret = esc_attr(nerdery_get_value($r['twitter_oauth']['access_token_secret'], false));

    // Caching and retrieval...
    // base on username and widget_instance if available
    $cache_name = $username;
    if ($widget_instance) {
        $cache_name .= "-{$widget_instance}";
    }

    $tweets = get_transient("_nerdery_{$cache_name}_twitter");

    if (!is_object($tweets)) {
        $connection = new Nerdery_TwitterOAuth(
            $consumer_key,
            $consumer_secret,
            $access_token,
            $access_token_secret
        );

        $tweets = $connection->get(
            Nerdery_Twitter_Bootstrap::TWITTER_USER_TIMELINE,
            array(
                'screen_name'      => $username,
                'count'            => $count,
                'include_rts'      => 1,
                'include_entities' => 1,
            )
        );

        if (!isset($tweets->error)){
            set_transient("_nerdery_{$cache_name}_twitter", $tweets, $cache_time);
        }
    }

    return $tweets;
}

/**
 * helper function
 * Checks the index. If set, return value. If not, return default
 *
 * @param array $array_value
 * @param mixed $default
 * @return mixed
 */
function nerdery_get_value($array_value, $default)
{
    return isset($array_value) ? $array_value : $default;
}