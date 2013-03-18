<?php
/**
 * WordPress Sandbox
 *
 * @package WordPress_Sandbox
 * @subpackage sidebars
 * @author John Heimkes IV <john@markupisart.com>
 * @version $Id$
 */

register_sidebar(array(
    'name'        =>  __('Example Sidebar', A2F_TEXT_DOMAIN),
    'id'          => 'a2f_example_sidebar',
    'description' =>  __('Example Sidebar. Rename and use as a skeleton for other dynamic sidebars.', A2F_TEXT_DOMAIN)
));
