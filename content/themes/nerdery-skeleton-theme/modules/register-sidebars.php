<?php
/**
 * WordPress Sandbox
 *
 * @package WordPress_Sandbox
 * @subpackage sidebars
 * @author Jess Green <jgreen@nerdery.com>
 * @version $Id$
 */

register_sidebar(array(
    'name'        =>  __('Example Sidebar', NERDERY_TEXT_DOMAIN),
    'id'          => 'nerdery_example_sidebar',
    'description' =>  __('Example Sidebar. Rename and use as a skeleton for other dynamic sidebars.', NERDERY_TEXT_DOMAIN)
));
