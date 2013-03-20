<?php
/**
 * A2f Pictures Theme
 *
 * @category A2f_Pictures_Theme
 * @package A2f_Pictures_Theme
 * @subpackage Modules_Register_PostTypes
 * @author John Heimkes IV <john@markupisart.com>
 * @version $Id$
 */

add_action('init', 'a2f_register_post_types');
function a2f_register_post_types()
{
    register_post_type(
        'a2f_project',
        array(
            'labels' => array(
                'name'          => 'Projects',
                'singular_name' => 'Project',
                'all_items'     => 'All Projects',
                'edit_item'     => 'Edit Project',
                'new_item'      => 'New Video',
                'view_item'     => 'View Video',
            ),
            'public'        => true,
            'menu_position' => 5,
            'menu_icon'     => A2F_THEME_PATH_URL . 'assets/images/films.png',
            'supports' => array(
                'title',
                'editor',
                'thumbnail',
                'author',
            ),
            'rewrite' => array(
                'slug' => 'project',
            ),
        )
    );
}