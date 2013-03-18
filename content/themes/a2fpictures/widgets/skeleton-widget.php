<?php
/**
 * WordPress Theme Widgets
 *
 * @category A2f_Pictures_Theme
 * @package A2f_Pictures_Theme
 * @author John Heimkes IV <john@markupisart.com>
 * @version $Id$
 */

/**
 * Class skeleton
 *
 * @category A2f_Pictures_Theme_Widgets
 * @package A2f_Pictures_Theme
 * @subpackage A2f_Pictures_Widget
 * @author John Heimkes IV <john@markupisart.com>
 */
class A2f_Skeleton_Widget extends WP_Widget
{
    /**
     * PHP5 Constructor
     */
    public function __construct()
    {
        parent::__construct(
            __CLASS__,
            'Skeleton Widget',
            array(
                'description' => 'A2f skeleton widget. Use as a skeleton to '
                                 . 'build other widgets.'
            )
        );
    }

	/**
	 * Front-end display of widget.
	 *
	 * @see WP_Widget::widget()
	 *
	 * @param array $args     Widget arguments.
	 * @param array $instance Saved values from database.
	 */
    public function widget($args, $instance)
    {
        extract($args);
        /*
         * $args :
         *    $before_widget
         *    $before_title
         *    $title
         *    $after_title
         *    $after_widget
         */

        // do before_widget, and title stuff here

        require locate_template(array('views/widgets/skeleton.php'));

        // do after_widget stuff

    }

	/**
	 * Sanitize widget form values as they are saved.
	 *
	 * @see WP_Widget::update()
	 *
	 * @param array $new_instance Values just sent to be saved.
	 * @param array $old_instance Previously saved values from database.
	 *
	 * @return array Updated safe values to be saved.
	 */
    public function update($new_instance, $old_instance)
    {
        // sanitize widget form values
        return $instance;
    }

	/**
	 * Back-end widget form.
	 *
	 * @see WP_Widget::form()
	 *
	 * @param array $instance Previously saved values from database.
	 */
    public function form ($instance)
    {
        /*
         * Widget Admin Form here.
         */
    }
}
